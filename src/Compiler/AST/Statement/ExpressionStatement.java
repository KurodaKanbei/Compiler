package Compiler.AST.Statement;

import Compiler.AST.Expression.Expression;
import Compiler.CFG.Instruction.Instruction;
import Compiler.Utility.Utility;

import java.util.List;

public class ExpressionStatement extends Statement{
    private Expression expression;

    public ExpressionStatement(Expression expression) {
        this.expression = expression;
    }

    public Expression getExpression() {
        return expression;
    }

    @Override
    public String toString() {
        return "Expression Statement";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        if (expression != null) {
            str.append(expression.toString(indents + 1) + "\n");
        }
        return str.toString();
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        if (expression != null) {
            expression.generateInstruction(instructionList);
        }
    }
}
