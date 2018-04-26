package Compiler.AST.Expression.PrefixExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class PrefixDecrementExpression extends Expression {
    private Expression expression;

    private PrefixDecrementExpression(Expression expression) {
        super(IntType.getInstance(), true);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (expression.getType() instanceof IntType == false) {
            throw new CompilationError("Prefix decrement expression is expected to be int type");
        }
        if (expression.isLeftValue() == false) {
            throw new CompilationError("Prefix decrement expression is expected to be left-value");
        }
        return new PrefixDecrementExpression(expression);
    }

    @Override
    public String toString() {
        return "Prefix Decrement Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n" + expression.toString(indents + 1);
    }
}
