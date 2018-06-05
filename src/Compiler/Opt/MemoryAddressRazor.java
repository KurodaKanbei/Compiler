package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.BinaryInstruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.*;

public class MemoryAddressRazor {
    public static void uselessMemoryAccessRemove(FunctionIR functionIR) {
        for (Block block : functionIR.getBlockList()) {
            for (int i = 0; i + 2 < block.getInstructionList().size(); i++) {
                if (block.getInstructionList().get(i) instanceof MoveInstruction
                        && ((MoveInstruction) block.getInstructionList().get(i)).getSource() instanceof VirtualRegister
                        && block.getInstructionList().get(i + 1) instanceof BinaryInstruction
                        && ((BinaryInstruction) block.getInstructionList().get(i + 1)).getTarget() instanceof VirtualRegister
                        && ((BinaryInstruction) block.getInstructionList().get(i + 1)).getSource() instanceof VirtualRegister
                        && ((BinaryInstruction) block.getInstructionList().get(i + 1)).getBinaryOp() == BinaryInstruction.BinaryOp.ADD
                        && block.getInstructionList().get(i + 2) instanceof MoveInstruction) {
                    MoveInstruction copyInstruction = (MoveInstruction) block.getInstructionList().get(i);
                    BinaryInstruction binaryInstruction = (BinaryInstruction) block.getInstructionList().get(i + 1);
                    MoveInstruction moveInstruction = (MoveInstruction) block.getInstructionList().get(i + 2);
                    VirtualRegister origin = (VirtualRegister) copyInstruction.getSource();
                    VirtualRegister base = (VirtualRegister) binaryInstruction.getTarget();
                    VirtualRegister offset = (VirtualRegister) binaryInstruction.getSource();
                    if (base == copyInstruction.getTarget() && functionIR.getRegisterStringMap().containsKey(origin) && !origin.isGlobal()
                            && functionIR.getRegisterStringMap().containsKey(base) && !base.isGlobal() && functionIR.getRegisterStringMap().containsKey(offset) && !offset.isGlobal()
                            && !moveInstruction.getLiveOut().contains(base)) {
                        if (moveInstruction.getTarget() instanceof ImmediateAddressOperand) {
                            ImmediateAddressOperand immediateAddressOperand = (ImmediateAddressOperand) moveInstruction.getTarget();
                            if (immediateAddressOperand.getBase() == base && immediateAddressOperand.getOffset().getValue() == 0) {
                                RegisterAddressOperand registerAddressOperand = new RegisterAddressOperand(origin, offset);
                                moveInstruction.setTarget(registerAddressOperand);
                                block.getInstructionList().remove(i);
                                block.getInstructionList().remove(i);
                            }
                        }
                        if (moveInstruction.getSource() instanceof ImmediateAddressOperand) {
                            ImmediateAddressOperand immediateAddressOperand = (ImmediateAddressOperand) moveInstruction.getSource();
                            if (immediateAddressOperand.getBase() == base && immediateAddressOperand.getOffset().getValue() == 0) {
                                RegisterAddressOperand registerAddressOperand = new RegisterAddressOperand(origin, offset);
                                moveInstruction.setSource(registerAddressOperand);
                                block.getInstructionList().remove(i);
                                block.getInstructionList().remove(i);
                            }
                        }
                    }
                }
            }
        }
    }
}
