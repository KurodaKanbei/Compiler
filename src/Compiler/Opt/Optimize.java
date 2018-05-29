package Compiler.Opt;

import Compiler.CFG.ProgramIR;

public class Optimize {
    public static void optimize() {
        ProgramIR.getFunctionMap().values().forEach(functionIR -> {
            LivenessAnalyst.analysis(functionIR);
            BinaryInstructionRazor.uselessMoveInstructionRemove(functionIR);
            //LivenessAnalyst.analysis(functionIR);
            //BinaryInstructionRazor.uselessBinaryInstructionRemove(functionIR);
            LivenessAnalyst.analysis(functionIR);
            RegisterAllocator.naiveAllocate(LivenessAnalyst.getEdge(), LivenessAnalyst.getCount(), functionIR);
        });
    }
}
