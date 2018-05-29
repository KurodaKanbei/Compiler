package Compiler.Opt;

import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.BinaryInstruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.ProgramIR;

import java.util.ArrayList;
import java.util.List;


public class BinaryInstructionRazor {
    private static final List<BinaryInstruction.BinaryOp> operatorList = new ArrayList<>(){{
        add(BinaryInstruction.BinaryOp.ADD); add(BinaryInstruction.BinaryOp.SUB); add(BinaryInstruction.BinaryOp.AND);
        add(BinaryInstruction.BinaryOp.OR); add(BinaryInstruction.BinaryOp.XOR);
    }};

    public static void uselessBinaryInstructionRemove(FunctionIR functionIR) {
        functionIR.getBlockList().forEach(
            block -> {
                for (int i = 0; i + 1 < block.getInstructionList().size(); i++) {
                    if (block.getInstructionList().get(i) instanceof BinaryInstruction
                            && block.getInstructionList().get(i + 1) instanceof MoveInstruction) {
                        BinaryInstruction binaryInstruction = (BinaryInstruction) block.getInstructionList().get(i);
                        MoveInstruction moveInstruction = (MoveInstruction) block.getInstructionList().get(i);
                        if (!operatorList.contains(binaryInstruction.getBinaryOp())) continue;
                        if (binaryInstruction.getTarget() == moveInstruction.getSource() && binaryInstruction.getTarget() instanceof VirtualRegister
                                && !moveInstruction.getLiveOut().contains((VirtualRegister) binaryInstruction.getTarget())) {
                            binaryInstruction.setTarget(moveInstruction.getTarget());
                            block.getInstructionList().remove(i + 1);
                            --i;
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
                        MoveInstruction moveInstruction2 = (MoveInstruction) block.getInstructionList().get(i);
                        if (moveInstruction1.getTarget() == moveInstruction2.getSource() && moveInstruction1.getTarget() instanceof VirtualRegister
                                && !moveInstruction2.getLiveOut().contains((VirtualRegister) moveInstruction1.getTarget())) {
                            moveInstruction1.setTarget(moveInstruction2.getTarget());
                            block.getInstructionList().remove(i + 1);
                            --i;
                        }
                    }
                }
            }
        );
    }
}
