package Compiler.AST.Statement;

import Compiler.AST.Symbol.Scope;
import Compiler.CFG.Instruction.LabelInstruction;

public abstract class LoopStatement extends Statement implements Scope {
    public LabelInstruction conditionLabel, bodyLabel, incrementLabel, exitLabel;

}
