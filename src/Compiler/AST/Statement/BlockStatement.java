package Compiler.AST.Statement;

import Compiler.AST.Constant.BoolConstant;
import Compiler.AST.Expression.AssignmentExpression;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Symbol.Scope;
import Compiler.AST.Type.BoolType;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Operand.Operand;
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
        for (int i = 0; i < statementList.size(); i++) {
            Statement thisStatement = statementList.get(i);
            if (i > 0) {
                Statement lastStatement = statementList.get(i - 1);
                if (thisStatement instanceof VariableDeclarationStatement && lastStatement instanceof VariableDeclarationStatement) {
                   Expression thisExpression = ((VariableDeclarationStatement) thisStatement).getExpression();
                   Expression lastExpression = ((VariableDeclarationStatement) lastStatement).getExpression();
                   if (((VariableDeclarationStatement) thisStatement).getType() instanceof BoolType
                           && ((VariableDeclarationStatement) lastStatement).getType() instanceof BoolType
                           && thisExpression != null && lastExpression != null
                           && thisExpression.equals(lastExpression)) {
                       Operand operand = lastExpression.getOperand();
                       ((VariableDeclarationStatement) thisStatement).generateInstructionWithReplaced(instructionList, operand);
                       ((VariableDeclarationStatement) thisStatement).getExpression().setOperand(operand);
                       continue;
                   }
                }
            }
            thisStatement.generateInstruction(instructionList);
        }
    }
}
