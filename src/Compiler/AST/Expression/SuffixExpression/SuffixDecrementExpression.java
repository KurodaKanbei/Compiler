package Compiler.AST.Expression.SuffixExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class SuffixDecrementExpression extends Expression {
    private Expression expression;

    private SuffixDecrementExpression(Expression expression) {
        super(IntType.getInstance(), false);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (expression.getType() instanceof IntType == false) {
            throw new CompilationError("Suffix decrement expression is expected to be int type");
        }
        if (expression.isLeftValue() == false) {
            throw new CompilationError("Suffix decrement expression is expected to be left-value");
        }
        return new SuffixDecrementExpression(expression);
    }

    @Override
    public String toString() {
        return "Suffix Decrement Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n" + expression.toString(indents + 1);
    }
}
