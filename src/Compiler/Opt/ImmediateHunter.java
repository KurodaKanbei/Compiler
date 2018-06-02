package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.BinaryInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Instruction.UnaryInstruction;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;

public class ImmediateHunter {

    public static void huntImmediate(FunctionIR functionIR) {
        for (Block block : functionIR.getBlockList()) {
            for (int i = 0; i < block.getInstructionList().size(); i++) {
                Instruction instruction = block.getInstructionList().get(i);
                if (instruction instanceof MoveInstruction) {
                    Operand target = ((MoveInstruction) instruction).getTarget();
                    Operand source = ((MoveInstruction) instruction).getSource();
                    if (target instanceof VirtualRegister && source instanceof ImmediateOperand
                            && ((ImmediateOperand) source).getValue() == 0) {
                        block.getInstructionList().remove(i);
                        block.getInstructionList().add(i, new BinaryInstruction(BinaryInstruction.BinaryOp.XOR, target, target));
                    }
                }
                if (instruction instanceof BinaryInstruction) {
                    Operand target = ((BinaryInstruction) instruction).getTarget();
                    Operand source = ((BinaryInstruction) instruction).getSource();
                    BinaryInstruction.BinaryOp binaryOp = ((BinaryInstruction) instruction).getBinaryOp();
                    if (binaryOp == BinaryInstruction.BinaryOp.ADD || binaryOp == BinaryInstruction.BinaryOp.SUB) {
                        if (source instanceof ImmediateOperand && ((ImmediateOperand) source).getValue() == 0) {
                            block.getInstructionList().remove(i--);
                            continue;
                        }
                        if (source instanceof ImmediateOperand && ((ImmediateOperand) source).getValue() == 1) {
                            block.getInstructionList().remove(i);
                            if (binaryOp == BinaryInstruction.BinaryOp.ADD) {
                                block.getInstructionList().add(i, new UnaryInstruction(UnaryInstruction.UnaryOp.INC, target));
                            }
                            if (binaryOp == BinaryInstruction.BinaryOp.SUB) {
                                block.getInstructionList().add(i, new UnaryInstruction(UnaryInstruction.UnaryOp.DEC, target));
                            }
                        }
                    }
                    if (binaryOp == BinaryInstruction.BinaryOp.MUL) {
                        if (source instanceof ImmediateOperand && ((ImmediateOperand) source).getValue() == 1) {
                            block.getInstructionList().remove(i--);
                            continue;
                        }
                        if (source instanceof ImmediateOperand && ((ImmediateOperand) source).getValue() == 0) {
                            block.getInstructionList().remove(i);
                            block.getInstructionList().add(i, new BinaryInstruction(BinaryInstruction.BinaryOp.XOR, target, target));
                            continue;
                        }
                        if (source instanceof ImmediateOperand && ((ImmediateOperand) source).getValue() == -1) {
                            block.getInstructionList().remove(i);
                            block.getInstructionList().add(i, new UnaryInstruction(UnaryInstruction.UnaryOp.NEG, target));
                            continue;
                        }
                    }
                    if (binaryOp == BinaryInstruction.BinaryOp.MOD) {
                        if (source instanceof ImmediateOperand && ((ImmediateOperand) source).getValue() == 1) {
                            block.getInstructionList().remove(i);
                            block.getInstructionList().add(i, new BinaryInstruction(BinaryInstruction.BinaryOp.XOR, target, target));
                        }
                    }
                }
            }
        }
    }
}
