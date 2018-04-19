package Compiler.AST.Statement;

import Compiler.IR.Instruction.LableInstruction;

public abstract class LoopStatement extends Statement {
    public LableInstruction loop, merge;
}
