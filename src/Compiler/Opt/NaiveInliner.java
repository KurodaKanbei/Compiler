package Compiler.Opt;

import Compiler.AST.Type.FunctionType;
import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.FunctionCallInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.LabelInstruction;
import Compiler.CFG.Instruction.MoveInstruction;

public class NaiveInliner {
    public static void inline(FunctionIR functionIR) {
        for (int i = 0; i < functionIR.getBlockList().size(); i++) {
            Block block = functionIR.getBlockList().get(i);
            for (int j = 0; j < block.getInstructionList().size(); j++) {
                Instruction instruction = block.getInstructionList().get(j);
                if (instruction instanceof FunctionCallInstruction) {
                    FunctionType functionType = ((FunctionCallInstruction) instruction).getFunctionType();
                    if (functionType.isBuiltin() || functionType == functionIR.getFunctionType()) {
                        continue;
                    }
                    int parameterSize = Math.min(6, functionType.getParameterList().size());
                    for (int k = 0; k < parameterSize; k++, j--) {
                        if (!(block.getInstructionList().get(j + k - parameterSize) instanceof MoveInstruction)) {
                            throw new InternalError("The instruction is expected to be move instruction");
                        }
                    }
                    LabelInstruction enterBlock = new LabelInstruction("inline_enter");

                }
            }
        }
    }
}
