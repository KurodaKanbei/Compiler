package Compiler.AST.Statement;

import Compiler.AST.Symbol.Scope;
import Compiler.IR.Instruction.LableInstruction;

public abstract class LoopStatement extends Statement implements Scope {
    public LableInstruction loop, merge;
}
