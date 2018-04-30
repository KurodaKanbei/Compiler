package Compiler.AST.Expression.UnaryExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.BoolType;
import Compiler.AST.Type.IntType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class UnaryNotExpression extends Expression {
     private Expression expression;

    private UnaryNotExpression(Expression expression) {
        super(IntType.getInstance(), false);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (expression.getType() instanceof BoolType == false) {
            throw new CompilationError("Unary not expression is expected to be bool type");
        }
        return new UnaryNotExpression(expression);
    }

    @Override
    public String toString() {
        return "Unary Not Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n" + expression.toString(indents + 1);
    }
}
