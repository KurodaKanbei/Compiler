package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.CJumpInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.JumpInstruction;
import Compiler.CFG.Instruction.LabelInstruction;

import java.util.HashMap;
import java.util.Map;

public class BlocksTyrant {
    public static void emptyBlockRemove(FunctionIR functionIR) {
        boolean hasImproved = true;
        while (hasImproved) {
            hasImproved = false;
            Map<LabelInstruction, LabelInstruction> linkMap = new HashMap<>();
            for (int i = 0; i + 1 < functionIR.getBlockList().size(); i++) {
                Block block = functionIR.getBlockList().get(i);
                if (block.getInstructionList().size() == 1 && block.getInstructionList().get(0) instanceof JumpInstruction) {
                    LabelInstruction targetLabelInstruction = ((JumpInstruction) block.getInstructionList().get(0)).getTarget();
                    linkMap.put(block.getLabelInstruction(), targetLabelInstruction);
                    functionIR.getBlockList().remove(i--);
                    hasImproved = true;
                    continue;
                }
                if (block.getInstructionList().isEmpty() && block.getLabelInstruction() != functionIR.getExitBlock()) {
                    LabelInstruction targetLabelInstruction = functionIR.getBlockList().get(i + 1).getLabelInstruction();
                    linkMap.put(block.getLabelInstruction(), targetLabelInstruction);
                    functionIR.getBlockList().remove(i--);
                    hasImproved = true;
                    continue;
                }
                for (Block oneBlock : functionIR.getBlockList()) {
                    for (Instruction instruction : oneBlock.getInstructionList()) {
                        if (instruction instanceof JumpInstruction) {
                            JumpInstruction jumpInstruction = (JumpInstruction) instruction;
                            jumpInstruction.setTarget(queryTarget(linkMap, jumpInstruction.getTarget()));
                        }
                        if (instruction instanceof CJumpInstruction) {
                            CJumpInstruction cJumpInstruction = (CJumpInstruction) instruction;
                            cJumpInstruction.setTarget(queryTarget(linkMap, cJumpInstruction.getTarget()));
                        }
                    }
                }
            }
        }
    }

    private static LabelInstruction queryTarget(Map<LabelInstruction, LabelInstruction> linkMap, LabelInstruction labelInstruction) {
        while (linkMap.containsKey(labelInstruction)) {
            labelInstruction = linkMap.get(labelInstruction);
        }
        return labelInstruction;
    }
}
