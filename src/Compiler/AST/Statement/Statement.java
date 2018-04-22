package Compiler.AST.Statement;

import Compiler.IR.Instruction.Instruction;

import java.util.List;

public abstract class Statement {
    public abstract String toString(int indents);
    //public abstract void issueInstruction(List<Instruction> instructionList);
}
