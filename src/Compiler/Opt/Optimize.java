package Compiler.Opt;

import Compiler.CFG.FunctionIR;
import Compiler.CFG.ProgramIR;

public class Optimize {

    public static void optimize() {
        for (FunctionIR functionIR : ProgramIR.getFunctionMap().values()) {
            InvariantConditionResort.invariantCodeResort(functionIR);
        }
        Destructor.uselessFunctionArrange();
        //MemoryUsageAvenger.unusedMemoryRemove();
        for (FunctionIR functionIR : ProgramIR.getFunctionMap().values()) {
            LivenessAnalyst.analysis(functionIR);
            OutputConverter.convertOutput(functionIR);
            LivenessAnalyst.analysis(functionIR);
            DeadLoopRazor.deadForStatementBlocksRemove(functionIR);
            LoopConditionManager.loopConditionImprove(functionIR);
            UnnecessarySetMurder.unnecessarySetRemove(functionIR);
            NaiveInliner.inline(functionIR);
            LivenessAnalyst.analysis(functionIR);
            UselessCodeSniper.uselessCodeCatch(functionIR);
            LivenessAnalyst.analysis(functionIR);
            BinaryInstructionRazor.uselessMoveInstructionRemove(functionIR);
            LivenessAnalyst.analysis(functionIR);
            BinaryInstructionRazor.uselessBinaryInstructionRemove(functionIR);
            LivenessAnalyst.analysis(functionIR);
            int round = 0;
            while (NaiveDeadCodeRazor.deadCodeEliminate(functionIR)) {
                LivenessAnalyst.analysis(functionIR);
                ++round;
                if (round == 100) break;
            }
            //FoolishConditionMonitor.stupidConditionRemove(functionIR);
            LivenessAnalyst.analysis(functionIR);
            NaiveRegisterAllocator.naiveAllocate(LivenessAnalyst.getEdge(), LivenessAnalyst.getCount(), functionIR);
            ImmediateHunter.huntImmediate(functionIR);
            LivenessAnalyst.analysis(functionIR);
            MemoryAddressRazor.uselessMemoryAccessRemove(functionIR);
            RedundantBlockDictator.redundantBlockRemove(functionIR);
            StupidMoveKiller.uselessMoveRemove(functionIR);
            BlocksTyrant.emptyBlockRemove(functionIR);
        }
        for (FunctionIR functionIR : ProgramIR.getFunctionMap().values()) {
            BinaryInstructionRazor.uselessReturnInstructionRemove(functionIR);
        }
        for (FunctionIR functionIR : ProgramIR.getFunctionMap().values()) {
            SuperBlockBuilder.buildSuperBlock(functionIR);
            SuperBlockBuilder.uselessJumpRemove(functionIR);
        }
    }
}
