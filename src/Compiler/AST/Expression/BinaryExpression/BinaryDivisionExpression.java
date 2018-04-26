package Compiler.AST.Expression.BinaryExpression;

import Compiler.AST.Constant.IntConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class BinaryDivisionExpression extends Expression {
    private Expression leftExpression, rightExpression;

    private BinaryDivisionExpression(Expression leftexpression, Expression rightExpression) {
        super(IntType.getInstance(), false);
        this.leftExpression = leftexpression;
        this.rightExpression = rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (leftExpression.getType() instanceof IntType == false || rightExpression.getType() instanceof IntType == false) {
            throw new CompilationError("Binary division expression is expected to be int type");
        }
        if (leftExpression instanceof IntConstant && rightExpression instanceof IntConstant) {
            int leftValue = ((IntConstant) leftExpression).getValue();
            int rightValue = ((IntConstant) rightExpression).getValue();
            return new IntConstant(leftValue / rightValue);
        }
        return new BinaryDivisionExpression(leftExpression, rightExpression);
    }

    @Override
    public String toString() {
        return "Binary Division Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + leftExpression.toString(indents + 1)
                + rightExpression.toString(indents + 1);
    }
}
