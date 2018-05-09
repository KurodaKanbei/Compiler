package Compiler.AST.Statement;

import Compiler.AST.ProgramAST;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.JumpInstruction;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class BreakStatement extends Statement {
    private LoopStatement loopStatement;

    public BreakStatement() {
        LoopStatement loopStatement = ProgramAST.symbolTable.getCurrentLoopStatement();
        if (null == loopStatement) {
            throw new CompilationError("break statement is expected in a loopStatement");
        }
        this.loopStatement = loopStatement;
    }

    public LoopStatement getLoopStatement() {
        return loopStatement;
    }

    @Override
    public String toString() {
        return "Break Statement";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n";
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        instructionList.add(new JumpInstruction(loopStatement.exitLabel));
    }
}
