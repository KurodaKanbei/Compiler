package Compiler.AST.Expression.BinaryExpression;

import Compiler.AST.Constant.BoolConstant;
import Compiler.AST.Constant.IntConstant;
import Compiler.AST.Constant.StringConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Expression.FunctionCallExpression;
import Compiler.AST.Expression.IdentifierExpression;
import Compiler.AST.Type.BoolType;
import Compiler.AST.Type.IntType;
import Compiler.AST.Type.StringType;
import Compiler.AST.Type.Type;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class BInaryLessEqualExpression extends Expression {
    private Expression leftExpression, rightExpression;

    private BInaryLessEqualExpression(Expression leftExpression, Expression rightExpression) {
        super(BoolType.getInstance(), false);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        Type leftType = leftExpression.getType();
        Type rightType = rightExpression.getType();
        if (leftType instanceof IntType && rightType instanceof IntType) {
            if ((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)) {
                int leftValue = ((IntConstant) leftExpression).getValue();
                int rightValue = ((IntConstant) rightExpression).getValue();
                return new BoolConstant(leftValue <= rightValue);
            } else {
                return new BInaryLessEqualExpression(leftExpression, rightExpression);
            }
        }
        if (leftType instanceof StringType && rightType instanceof StringType) {
            if ((leftExpression instanceof StringConstant) && (rightExpression instanceof StringConstant)) {
                String leftValue = ((StringConstant) leftExpression).getValue();
                String rightValue = ((StringConstant) rightExpression).getValue();
                return new BoolConstant(leftValue.compareTo(rightValue) <= 0);
            } else {
                List<Expression> expressionList = new ArrayList<>();
                expressionList.add(leftExpression);
                expressionList.add(rightExpression);
                return FunctionCallExpression.getExpression(
                        IdentifierExpression.getExpression("__string_LEEQ"),
                        expressionList
                );
            }
        }
        throw new CompilationError("Binary less equal expression needs int or string type");
    }

    @Override
    public String toString() {
        return "Binary Less Equal Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + leftExpression.toString(indents + 1)
                + rightExpression.toString(indents + 1);
    }

}
