package Compiler.AST.Expression.BinaryExpression;

import Compiler.AST.Constant.BoolConstant;
import Compiler.AST.Constant.IntConstant;
import Compiler.AST.Constant.NullConstant;
import Compiler.AST.Constant.StringConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Expression.FunctionCallExpression;
import Compiler.AST.Expression.IdentifierExpression;
import Compiler.AST.Type.BoolType;
import Compiler.AST.Type.StringType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class BinaryEqualExpression extends Expression {
    private Expression leftExpression, rightExpression;

    private BinaryEqualExpression(Expression leftExpression, Expression rightExpression) {
        super(BoolType.getInstance(), false);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (leftExpression.getType().compatibleWith(rightExpression.getType()) == false) {
            throw new CompilationError("Binary equal expression is expected to have two compatible expression");
        }
        if ((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)) {
            int leftValue = ((IntConstant) leftExpression).getValue();
            int rightValue = ((IntConstant) rightExpression).getValue();
            return new BoolConstant(leftValue == rightValue);
        }
        if ((leftExpression instanceof BoolConstant) && (rightExpression instanceof BoolConstant)) {
            boolean leftValue = ((BoolConstant) leftExpression).getValue();
            boolean rightValue = ((BoolConstant) rightExpression).getValue();
            return new BoolConstant(leftValue == rightValue);
        }
        if ((leftExpression instanceof StringConstant) && (rightExpression instanceof StringConstant)) {
            String leftValue = ((StringConstant) leftExpression).getValue();
            String rightValue = ((StringConstant) rightExpression).getValue();
            return new BoolConstant(leftValue.equals(rightValue));
        }
        if ((leftExpression instanceof NullConstant) && (rightExpression instanceof NullConstant)) {
            return new BoolConstant(true);
        }
        if (leftExpression.getType() instanceof StringType && rightExpression.getType() instanceof StringType) {
            List<Expression> expressionList = new ArrayList<>();
            expressionList.add(leftExpression);
            expressionList.add(rightExpression);
            return FunctionCallExpression.getExpression(
                    IdentifierExpression.getExpression("__string_EQ"),
                    expressionList
            );
        }
        return new BinaryEqualExpression(leftExpression, rightExpression);
    }

    @Override
    public String toString() {
        return "Binary Equal Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + leftExpression.toString(indents + 1)
                + rightExpression.toString(indents + 1);
    }
}
