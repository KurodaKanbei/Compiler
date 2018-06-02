package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.CSetInstruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.VirtualRegister;

public class UnnecessarySetMurder {
    public static void unnecessarySetRemove(FunctionIR functionIR) {
        if (functionIR.getBeMemorized()) return;
        for (Block block : functionIR.getBlockList()) {
            for (int i = 0; i + 1 < block.getInstructionList().size(); i++) {
                if (block.getInstructionList().get(i) instanceof CSetInstruction
                    && block.getInstructionList().get(i + 1) instanceof MoveInstruction) {
                    CSetInstruction setInstruction = (CSetInstruction) block.getInstructionList().get(i);
                    MoveInstruction moveInstruction = (MoveInstruction) block.getInstructionList().get(i + 1);
                    if (moveInstruction.getTarget() instanceof VirtualRegister &&
                            moveInstruction.getSource() == setInstruction.getTarget() &&
                            !moveInstruction.getLiveOut().contains(setInstruction.getTarget())) {
                        block.getInstructionList().remove(i + 1);
                        ((CSetInstruction) block.getInstructionList().get(i)).setTarget((VirtualRegister) moveInstruction.getTarget());
                    }
                }
            }
        }
    }
}
