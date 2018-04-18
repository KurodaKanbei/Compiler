package Compiler.AST.Statement;

import Compiler.AST.Statement.Statement;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class BreakStatement extends Statement {
    private LoopStatement loopStatement;

    public BreakStatement() throws Exception {
        LoopStatement loopStatement = ProgramAST.symbolTable.getCurrentLoop();
        if (null == loopStatement) {
            throw new CompilationError("BreakStatement is expected in a loopStatement");
        }
        this.loopStatement = loopStatement;
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
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents)).append(toString()).append("\n");
        return str.toString();
    }
}
