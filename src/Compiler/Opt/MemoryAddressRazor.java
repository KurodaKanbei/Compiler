package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.BinaryInstruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.*;

public class MemoryAddressRazor {
    public static void uselessMemoryAccessRemove(FunctionIR functionIR) {
        for (Block block : functionIR.getBlockList()) {
            for (int i = 0; i + 1 < block.getInstructionList().size(); i++) {
                if (block.getInstructionList().get(i) instanceof BinaryInstruction
                        && ((BinaryInstruction) block.getInstructionList().get(i)).getTarget() instanceof VirtualRegister
                        && ((BinaryInstruction) block.getInstructionList().get(i)).getSource() instanceof VirtualRegister
                        && ((BinaryInstruction) block.getInstructionList().get(i)).getBinaryOp() == BinaryInstruction.BinaryOp.ADD
                        && block.getInstructionList().get(i + 1) instanceof MoveInstruction) {
                    BinaryInstruction binaryInstruction = (BinaryInstruction) block.getInstructionList().get(i);
                    MoveInstruction moveInstruction = (MoveInstruction) block.getInstructionList().get(i + 1);
                    VirtualRegister base = (VirtualRegister) binaryInstruction.getTarget();
                    VirtualRegister offset = (VirtualRegister) binaryInstruction.getSource();
                    if (functionIR.getRegisterStringMap().containsKey(base) && !base.isGlobal() && functionIR.getRegisterStringMap().containsKey(offset) && !offset.isGlobal()
                            && !moveInstruction.getLiveOut().contains(base)) {
                        if (moveInstruction.getTarget() instanceof ImmediateAddressOperand) {
                            ImmediateAddressOperand immediateAddressOperand = (ImmediateAddressOperand) moveInstruction.getTarget();
                            if (immediateAddressOperand.getBase() == base && immediateAddressOperand.getOffset().getValue() == 0) {
                                RegisterAddressOperand registerAddressOperand = new RegisterAddressOperand(base, offset);
                                moveInstruction.setTarget(registerAddressOperand);
                                block.getInstructionList().remove(i);
                            }
                        }
                        if (moveInstruction.getSource() instanceof ImmediateAddressOperand) {
                            ImmediateAddressOperand immediateAddressOperand = (ImmediateAddressOperand) moveInstruction.getSource();
                            if (immediateAddressOperand.getBase() == base && immediateAddressOperand.getOffset().getValue() == 0) {
                                RegisterAddressOperand registerAddressOperand = new RegisterAddressOperand(base, offset);
                                moveInstruction.setSource(registerAddressOperand);
                                block.getInstructionList().remove(i);
                            }
                        }
                    }
                }
            }
        }
    }
}
