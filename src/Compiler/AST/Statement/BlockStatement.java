package Compiler.AST.Statement;

//import Compiler.Instruction.Instruction;
import Compiler.AST.Symbol.Scope;
import Compiler.Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class BlockStatement extends Statement implements Scope {
    public List<Statement> statementList;

    public BlockStatement() {
        this.statementList = new ArrayList<>();
    }

    public void addStatement(Statement statement) {
        this.statementList.add(statement);
    }

    public List<Statement> getStatementList() {
        return statementList;
    }

    @Override
    public String toString() {
        return "BreakStatement";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents)).append(toString()).append("\n");
        statementList.forEach(statement -> str.append(statement.toString(indents + 1)));
        return str.toString();
    }

}
