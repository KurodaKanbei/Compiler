package Compiler.Opt;

import Compiler.CFG.ProgramIR;

public class Optimize {
    public static void optimize() {
        ProgramIR.getFunctionMap().values().forEach(functionIR -> {
            LivenessAnalysis.analysis(functionIR);
            RegisterAllocator.naiveAllocate(LivenessAnalysis.getEdge(), LivenessAnalysis.getCount(), functionIR);
        });
    }
}
