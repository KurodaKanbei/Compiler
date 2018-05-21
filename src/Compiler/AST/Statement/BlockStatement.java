package Compiler.AST.Statement;

import Compiler.AST.Symbol.Scope;
import Compiler.CFG.Instruction.Instruction;
import Compiler.Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class BlockStatement extends Statement implements Scope {
    private List<Statement> statementList;

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
        return "BlockStatement";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents)).append(toString()).append("\n");
        statementList.forEach(statement -> str.append(statement.toString(indents + 1)));
        return str.toString();
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        for (Statement statement : statementList) {
            statement.generateInstruction(instructionList);
        }
    }
}
