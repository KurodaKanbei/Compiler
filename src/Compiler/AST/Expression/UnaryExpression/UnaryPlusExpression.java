package Compiler.AST.Expression.UnaryExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.AST.Type.Type;
import Compiler.CFG.Instruction.Instruction;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class UnaryPlusExpression extends Expression {
    private Expression expression;

    private UnaryPlusExpression(Expression expression) {
        super(IntType.getInstance(), false);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (!(expression.getType() instanceof IntType)) {
            throw new CompilationError("Unary plus expression is expected to be int type");
        }
        return new UnaryPlusExpression(expression);
    }

    public Expression getExpression() {
        return expression;
    }

    @Override
    public boolean equals(Expression rhs) {
        if (!(rhs instanceof UnaryPlusExpression)) return false;
        return expression.equals(((UnaryPlusExpression) rhs).getExpression());
    }

    @Override
    public String toString() {
        return "Unary Plus Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n" + expression.toString(indents + 1);
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        expression.generateInstruction(instructionList);
        operand = expression.getOperand();
    }
}
