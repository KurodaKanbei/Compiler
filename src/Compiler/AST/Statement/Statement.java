package Compiler.AST.Statement;

import Compiler.CFG.Instruction.Instruction;

import java.util.List;

public abstract class Statement {
    public abstract String toString();
    public abstract String toString(int indents);
    public abstract void generateInstruction(List<Instruction> instructionList);

}
