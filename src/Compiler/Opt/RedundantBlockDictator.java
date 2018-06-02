package Compiler.Opt;

import Compiler.AST.Expression.BinaryExpression.BinaryLogicalOrExpression;
import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.CJumpInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.JumpInstruction;

import java.util.HashMap;
import java.util.Map;

public class RedundantBlockDictator {
    private static Map<Block, Integer> blockIntegerMap;

    public static void redundantBlockRemove(FunctionIR functionIR) {
        blockIntegerMap = new HashMap<>();
        for (Block block : functionIR.getBlockList()) {
            for (Instruction instruction : block.getInstructionList()) {
                if (instruction instanceof JumpInstruction) {
                    Block target = ((JumpInstruction) instruction).getTarget().getBlock();
                    update(target);
                }
                if (instruction instanceof CJumpInstruction) {
                    Block target =  ((CJumpInstruction) instruction).getTarget().getBlock();
                    update(target);
                }
            }
        }
        for (int i = 1; i + 1 < functionIR.getBlockList().size(); i++) {
            Block block1 = functionIR.getBlockList().get(i - 1);
            Block block2 = functionIR.getBlockList().get(i);
            if (blockIntegerMap.containsKey(block2) && blockIntegerMap.get(block2) > 1) continue;
            Block block3 = functionIR.getBlockList().get(i + 1);
            if (block1.getTarget() == block2 && block2.getTarget() == block3 && block2.canBeReduced()) {
                functionIR.getBlockList().remove(i--);
                block1.convertTarget(block3);
            }
        }
    }


    private static void update(Block block) {
        if (!blockIntegerMap.containsKey(block)) {
            blockIntegerMap.put(block, 0);
        }
        int inBlocks = blockIntegerMap.get(block);
        blockIntegerMap.put(block, ++inBlocks);
    }
}
