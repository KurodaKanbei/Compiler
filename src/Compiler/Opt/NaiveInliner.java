package Compiler.Opt;

import Compiler.AST.Type.FunctionType;
import Compiler.AST.Type.VoidType;
import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.*;
import Compiler.CFG.Operand.Operand;

import java.util.ArrayList;
import java.util.List;

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
                    block.getInstructionList().remove(j);
                    int parameterSize = Math.min(6, functionType.getParameterList().size());
                    for (int k = 0; k < parameterSize; k++) {
                        if (!(block.getInstructionList().get(j + k - parameterSize) instanceof MoveInstruction)) {
                            throw new InternalError("The instruction is expected to be move instruction");
                        }
                        MoveInstruction moveInstruction = (MoveInstruction) block.getInstructionList().get(j + k - parameterSize);
                        moveInstruction.setTarget(functionType.getParameterList().get(k).getOperand());
                    }
                    for (int k = 6; k < functionType.getParameterList().size(); k++) {
                        block.getInstructionList().add(j++, new MoveInstruction(functionType.getParameterList().get(k).getOperand(),
                                ((FunctionCallInstruction) instruction).getOperandList().get(k - 6)));
                    }
                    LabelInstruction enterLabel = new LabelInstruction("inline_enter");
                    LabelInstruction exitLabel = new LabelInstruction("inline_exit");
                    //LabelInstruction entryLabel = new LabelInstruction("inline_entry");
                    functionType.setEnterLabel(enterLabel);
                    functionType.setExitLabel(exitLabel);

                    block.getInstructionList().add(j++, new JumpInstruction(enterLabel));
                    //block.getInstructionList().add(j++, new JumpInstruction(entryLabel));
                    List<Instruction> instructionList = new ArrayList<>();
                    instructionList.add(enterLabel);
                    functionType.getBlockStatement().generateInstruction(instructionList);

                    Operand target = ((MoveInstruction) block.getInstructionList().get(j)).getTarget();

                    for (int k = 1; k < instructionList.size(); k++) {
                        if (instructionList.get(k) instanceof ReturnInstruction) {
                            Operand source = ((ReturnInstruction)instructionList.get(k)).getReturnValue();
                            instructionList.remove(k);
                            instructionList.add(k, new MoveInstruction(target, source));
                        }
                    }
                    if (instructionList.isEmpty()) {
                        instructionList.add(new JumpInstruction(exitLabel));
                    }
                    if (!(instructionList.get(instructionList.size() - 1) instanceof JumpInstruction)) {
                        instructionList.add(new JumpInstruction(exitLabel));
                    }
                    instructionList.add(exitLabel);
                    //instructionList.add(new JumpInstruction(entryLabel));
                    if (!(functionType.getReturnType() instanceof VoidType) && !functionType.isConstructFunction()) {
                        block.getInstructionList().remove(j);
                    }
                    while (j < block.getInstructionList().size()) {
                        instructionList.add(block.getInstructionList().remove(j));
                    }
                    for (int k = 0, l; k < instructionList.size(); k = l) {
                        LabelInstruction labelInstruction = (LabelInstruction) instructionList.get(k);
                        Block appendedBlock = new Block(functionIR, labelInstruction, labelInstruction.getName(), functionIR.getBlockList().size());
                        for (l = k + 1; l < instructionList.size(); l++) {
                            if (instructionList.get(l) instanceof LabelInstruction) break;
                            appendedBlock.addInstruction(instructionList.get(l));
                        }
                        labelInstruction.setBlock(appendedBlock);
                        functionIR.getBlockList().add(++i, appendedBlock);
                    }
                    --i;
                }
            }
        }
    }
}
