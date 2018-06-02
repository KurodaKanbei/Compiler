package Compiler.Opt;

import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.BinaryInstruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.VirtualRegister;

import java.util.ArrayList;
import java.util.List;


public class BinaryInstructionRazor {
    private static final List<BinaryInstruction.BinaryOp> operatorList = new ArrayList<BinaryInstruction.BinaryOp>(){{
        add(BinaryInstruction.BinaryOp.ADD); add(BinaryInstruction.BinaryOp.SUB); add(BinaryInstruction.BinaryOp.AND);
        add(BinaryInstruction.BinaryOp.OR); add(BinaryInstruction.BinaryOp.XOR);
    }};

    public static void uselessBinaryInstructionRemove(FunctionIR functionIR) {
        functionIR.getBlockList().forEach(
            block -> {
                for (int i = 1; i + 1 < block.getInstructionList().size(); i++) {
                    if (block.getInstructionList().get(i) instanceof BinaryInstruction
                            && block.getInstructionList().get(i - 1) instanceof MoveInstruction
                            && block.getInstructionList().get(i + 1) instanceof MoveInstruction) {
                        BinaryInstruction binaryInstruction = (BinaryInstruction) block.getInstructionList().get(i);
                        MoveInstruction moveInstruction1 = (MoveInstruction) block.getInstructionList().get(i - 1);
                        MoveInstruction moveInstruction2 = (MoveInstruction) block.getInstructionList().get(i + 1);
                        if (!operatorList.contains(binaryInstruction.getBinaryOp())) continue;
                        if (moveInstruction1.getTarget() instanceof VirtualRegister && moveInstruction1.getSource() instanceof VirtualRegister) {
                            VirtualRegister t = (VirtualRegister) moveInstruction1.getTarget();
                            VirtualRegister A = (VirtualRegister) moveInstruction1.getSource();
                            if (t == binaryInstruction.getTarget() && A == moveInstruction2.getTarget() && !moveInstruction2.getLiveOut().contains(t) && t.getSystemRegister() == null) {
                                binaryInstruction.setTarget(A);
                                block.getInstructionList().remove(i + 1);
                                block.getInstructionList().remove(i - 1);
                            }
                        }
                    }
                }
            }
        );
    }

    public static void uselessMoveInstructionRemove(FunctionIR functionIR) {
        functionIR.getBlockList().forEach(
            block -> {
                for (int i = 0; i + 1 < block.getInstructionList().size(); i++) {
                    if (block.getInstructionList().get(i) instanceof MoveInstruction
                            && block.getInstructionList().get(i + 1) instanceof MoveInstruction) {
                        MoveInstruction moveInstruction1 = (MoveInstruction) block.getInstructionList().get(i);
                        MoveInstruction moveInstruction2 = (MoveInstruction) block.getInstructionList().get(i + 1);
                        if (moveInstruction1.getTarget() == moveInstruction2.getSource() && moveInstruction1.getTarget() instanceof VirtualRegister
                                 && !moveInstruction2.getLiveOut().contains(moveInstruction1.getTarget())) {
                            moveInstruction1.setTarget(moveInstruction2.getTarget());
                            block.getInstructionList().remove(i + 1);
                            --i;
                            continue;
                        }
                    }
                    if (block.getInstructionList().get(i) instanceof MoveInstruction
                            && block.getInstructionList().get(i + 1) instanceof MoveInstruction) {
                        MoveInstruction moveInstruction1 = (MoveInstruction) block.getInstructionList().get(i);
                        MoveInstruction moveInstruction2 = (MoveInstruction) block.getInstructionList().get(i + 1);
                        if (moveInstruction1.getTarget() == moveInstruction2.getSource()
                                && moveInstruction1.getSource() == moveInstruction2.getTarget()) {
                            block.getInstructionList().remove(i--);
                        }
                    }
                }
            }
        );
    }
}
