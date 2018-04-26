package Compiler.AST.Expression.UnaryExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class UnaryReverseExpression extends Expression {
    private Expression expression;

    private UnaryReverseExpression(Expression expression) {
        super(IntType.getInstance(), false);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (expression.getType() instanceof IntType == false) {
            throw new CompilationError("Unary reverse expression is expected to be int type");
        }
        return new UnaryReverseExpression(expression);
    }

    @Override
    public String toString() {
        return "Unary Reverse Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n" + expression.toString(indents + 1);
    }
}
