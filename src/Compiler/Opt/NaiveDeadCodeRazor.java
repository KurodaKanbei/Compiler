package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.BinaryInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Instruction.UnaryInstruction;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;


public class NaiveDeadCodeRazor {
    public static boolean deadCodeEliminate(FunctionIR functionIR) {
        boolean hasImproved = false;
        for (Block block : functionIR.getBlockList()) {
            for (int i = 0; i < block.getInstructionList().size(); i++) {
                Instruction instruction = block.getInstructionList().get(i);
                if (instruction instanceof MoveInstruction) {
                    Operand target = ((MoveInstruction) instruction).getTarget();
                    if (target instanceof VirtualRegister && !instruction.getLiveOut().contains(target)) {
                        block.getInstructionList().remove(i--);
                        hasImproved = true;
                    }
                }
                if (instruction instanceof BinaryInstruction) {
                    Operand target = ((BinaryInstruction) instruction).getTarget();
                    if (target instanceof VirtualRegister && !instruction.getLiveOut().contains(target)) {
                        block.getInstructionList().remove(i--);
                        hasImproved = true;
                    }
                }
                if (instruction instanceof UnaryInstruction) {
                    Operand target = ((UnaryInstruction) instruction).getTarget();
                    if (target instanceof VirtualRegister && !instruction.getLiveOut().contains(target)) {
                        block.getInstructionList().remove(i--);
                        hasImproved = true;
                    }
                }
            }
        }
        return hasImproved;
    }
}
