package Compiler.AST.Expression.PrefixExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class PrefixIncrementExpression extends Expression {
    private Expression expression;

    private PrefixIncrementExpression(Expression expression) {
        super(IntType.getInstance(), true);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (expression.getType() instanceof IntType == false) {
            throw new CompilationError("Prefix increment expression is expected to be int type");
        }
        if (expression.isLeftValue() == false) {
            throw new CompilationError("Prefix increment expression is expected to be left-value");
        }
        return new PrefixIncrementExpression(expression);
    }

    @Override
    public String toString() {
        return "Prefix Increment Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n" + expression.toString(indents + 1);
    }
}
