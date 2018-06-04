package Compiler.Opt;

import Compiler.AST.Type.FunctionType;
import Compiler.AST.Type.IntType;
import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.*;
import Compiler.CFG.ProgramIR;

import java.util.List;

public class Destructor {

    public static void uselessFunctionArrange() {
        boolean hasImprove = true;
        while (hasImprove) {
            hasImprove = false;
            for (FunctionIR functionIR : ProgramIR.getFunctionMap().values()) {
                if (functionIR.isBeDeleted()) continue;
                FunctionType functionType = beReplaced(functionIR);
                if (functionType != null) {
                    functionIR.setBeDeleted(true);
                    for (FunctionIR func : ProgramIR.getFunctionMap().values()) {
                        for (Block block : func.getBlockList()) {
                            for (Instruction instruction : block.getInstructionList()) {
                                if (instruction instanceof FunctionCallInstruction
                                        && ((FunctionCallInstruction) instruction).getFunctionType() == functionIR.getFunctionType()) {
                                    ((FunctionCallInstruction) instruction).setFunctionType(functionType);
                                }
                            }
                        }
                    }
                    hasImprove = true;
                    break;
                }
            }
        }
    }

    private static FunctionType beReplaced(FunctionIR functionIR) {
        if (functionIR.getBlockList().size() != 2) return null;
        Block enterBlock = functionIR.getBlockList().get(0);
        Block exitBlock = functionIR.getBlockList().get(1);
        if (enterBlock.getInstructionList().size() != 6 || exitBlock.getInstructionList().size() != 0) return null;
        if (functionIR.getFunctionType().getReturnType() != IntType.getInstance()
                || functionIR.getFunctionType().getParameterList().size() != 1) return null;
        List<Instruction> instructionList = enterBlock.getInstructionList();
        if (instructionList.get(0) instanceof MoveInstruction
                && instructionList.get(1) instanceof MoveInstruction
                && instructionList.get(2) instanceof FunctionCallInstruction
                && instructionList.get(3) instanceof MoveInstruction
                && instructionList.get(4) instanceof ReturnInstruction
                && instructionList.get(5) instanceof JumpInstruction) {
            return ((FunctionCallInstruction) instructionList.get(2)).getFunctionType();
        }
        return null;
    }
}
