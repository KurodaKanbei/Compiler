package Compiler.AST.Expression;

import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class AssignmentExpression extends Expression {
    private Expression leftExpression, rightExpression;

    private AssignmentExpression(Expression leftExpression, Expression rightExpression) {
        super(leftExpression.getType(), true);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (leftExpression.isLeftValue() == false) {
            throw new CompilationError("The left expression in assignment expression is expected to be left-value");
        }
        if (leftExpression.getType().compatibleWith(rightExpression.getType()) == false) {
            throw new CompilationError("Assignment expression is expected to contain two compatible expression");
        }
        return new AssignmentExpression(leftExpression, rightExpression);
    }

    @Override
    public String toString() {
        return "Assignment Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + leftExpression.toString(indents + 1)
                + rightExpression.toString(indents + 1);
    }
}
