package Compiler.Opt;

import Compiler.CFG.FunctionIR;

public class Optimize {
    public Optimize(FunctionIR functionIR) {
        LivenessAnalysis.analysis(functionIR);

    }
}
