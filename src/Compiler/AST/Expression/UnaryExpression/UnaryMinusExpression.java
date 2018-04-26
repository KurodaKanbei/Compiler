package Compiler.AST.Expression.UnaryExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class UnaryMinusExpression extends Expression {
    private Expression expression;

    private UnaryMinusExpression(Expression expression) {
        super(IntType.getInstance(), false);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (expression.getType() instanceof IntType == false) {
            throw new CompilationError("Unary minus expression is expected to be int type");
        }
        return new UnaryMinusExpression(expression);
    }

    @Override
    public String toString() {
        return "Unary Minus Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n" + expression.toString(indents + 1);
    }
}
