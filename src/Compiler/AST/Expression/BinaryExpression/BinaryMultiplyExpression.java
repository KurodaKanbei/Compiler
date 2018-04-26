package Compiler.AST.Expression.BinaryExpression;

import Compiler.AST.Constant.IntConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class BinaryMultiplyExpression extends Expression {
    private Expression leftExpression, rightExpression;

    private BinaryMultiplyExpression(Expression leftExpression, Expression rightExpressoin) {
        super(IntType.getInstance(), false);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpressoin;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (!(leftExpression.getType() instanceof IntType) ||
                !(rightExpression.getType() instanceof IntType)) {
            throw new CompilationError("Binary multiply expression needs int type");
        }
        if ((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)) {
            int leftValue = ((IntConstant) leftExpression).getValue();
            int rightValue = ((IntConstant) rightExpression).getValue();
            return new IntConstant(leftValue * rightValue);
        }
        return new BinaryMultiplyExpression(leftExpression, rightExpression);
    }

    @Override
    public String toString() {
        return "Binary Multiply Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + leftExpression.toString(indents + 1)
                + rightExpression.toString(indents + 1);
    }
}
