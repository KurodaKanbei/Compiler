package Compiler.Opt;

import Compiler.CFG.ProgramIR;

public class Optimize {
    public static void optimize() {
        ProgramIR.getFunctionMap().values().forEach(functionIR -> {
            NaiveInliner.inline(functionIR);
            LivenessAnalyst.analysis(functionIR);
            BlocksRazor.deadForStatementBlocksRemove(functionIR);
            OutputConverter.convertOutput(functionIR);
            LivenessAnalyst.analysis(functionIR);
            int round = 0;
            while (NaiveDeadCodeRazor.deadCodeEliminate(functionIR)) {
                LivenessAnalyst.analysis(functionIR);
                ++round;
                if (round == 100) break;
            }
            LivenessAnalyst.analysis(functionIR);
            BinaryInstructionRazor.uselessMoveInstructionRemove(functionIR);
            LivenessAnalyst.analysis(functionIR);
            BinaryInstructionRazor.uselessBinaryInstructionRemove(functionIR);
            LivenessAnalyst.analysis(functionIR);
            NaiveRegisterAllocator.naiveAllocate(LivenessAnalyst.getEdge(), LivenessAnalyst.getCount(), functionIR);
        });
    }
}
