package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.JumpInstruction;
import Compiler.CFG.Instruction.LabelInstruction;

import java.util.List;

public class SuperBlockBuilder {
    public static void buildSuperBlock(FunctionIR functionIR) {
        for (int round = 0; round < 16; round++) {
            for (Block block : functionIR.getBlockList()) {
                List<Instruction> instructionList = block.getInstructionList();
                if (!instructionList.isEmpty() && instructionList.get(instructionList.size() - 1) instanceof JumpInstruction) {
                    LabelInstruction targetLabelInstruction = ((JumpInstruction) instructionList.get(instructionList.size() - 1)).getTarget();
                    if (targetLabelInstruction != functionIR.getExitBlock() && targetLabelInstruction.getBlock().getInstructionList().size() < 100) {
                        instructionList.remove(instructionList.size() - 1);
                        for (Instruction instruction : targetLabelInstruction.getBlock().getInstructionList()) {
                            block.getInstructionList().add(instruction);
                        }
                    }
                }
            }
        }
    }

    public static void uselessJumpRemove(FunctionIR functionIR) {
        for (int i = 0; i + 1 < functionIR.getBlockList().size(); i++) {
            Block block = functionIR.getBlockList().get(i);
            if (block.getInstructionList().isEmpty()) continue;
            int n = block.getInstructionList().size();
            Instruction instruction = block.getInstructionList().get(n - 1);
            if (instruction instanceof JumpInstruction &&
                    ((JumpInstruction) instruction).getTarget().getBlock() == functionIR.getBlockList().get(i + 1)) {
                block.getInstructionList().remove(n - 1);
            }
        }
    }
}
