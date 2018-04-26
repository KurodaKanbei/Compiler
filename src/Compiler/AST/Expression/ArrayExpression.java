package Compiler.AST.Expression;

import Compiler.AST.Type.ArrayType;
import Compiler.AST.Type.IntType;
import Compiler.AST.Type.Type;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class ArrayExpression extends Expression{
    private Expression arrayExpression, subscriptExpression;

    private ArrayExpression(Type type, Expression arrayExpression, Expression subscriptExpression) {
        super(type, arrayExpression.isLeftValue());
        this.arrayExpression = arrayExpression;
        this.subscriptExpression = subscriptExpression;
    }

    public static Expression getExpression(Expression arrayExpression, Expression subscriptExpression) {
        if (arrayExpression.getType() instanceof ArrayType == false) {
            throw new CompilationError("Array expression need array type");
        }
        if (subscriptExpression.getType() instanceof IntType == false) {
            throw new CompilationError("Subscript expression need int type");
        }
        return new ArrayExpression(arrayExpression.getType(), arrayExpression, subscriptExpression);
    }

    @Override
    public String toString() {
        return "Array Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + arrayExpression.toString(indents + 1)
                + subscriptExpression.toString(indents + 1);
    }
}
