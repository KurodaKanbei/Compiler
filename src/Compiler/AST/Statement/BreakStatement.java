package Compiler.AST.Statement;

import Compiler.AST.Statement.Statement;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class BreakStatement extends Statement {
    private LoopStatement loopStatement;

    public BreakStatement() {
        /*LoopStatement loopStatement = ProgramAST.symbolTable.getCurrentLoop();
        if (null == loopStatement) {
            throw new CompilationError("BreakStatement is expected in a loopStatement");
        }
        this.loopStatement = loopStatement;*/
    }

    public LoopStatement getLoopStatement() {
        return loopStatement;
    }

    @Override
    public String toString() {
        return "BreakStatement";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n";
    }
}
