package Compiler.AST.Expression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.ArrayType;
import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.IntType;
import Compiler.AST.Type.Type;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class NewExpression extends Expression {
    private List<Expression> expressionsList;

    private NewExpression(Type type, List<Expression> expressionsList) {
        super(type, false);
        this.expressionsList = expressionsList;
    }

    public static Expression getExpression(Type type, List<Expression> expressionsList) {
        int size = expressionsList.size();
        if (size == 0) {
            if (!(type instanceof ClassType)) {
                throw new CompilationError("Can't new a basic type");
            }
            return new NewExpression(type, expressionsList);
        }
        for (Expression expression : expressionsList) {
            if (expression != null && !(expression.getType() instanceof IntType)) {
                throw new CompilationError("New array expression expected to be int type");
            }
        }
        ArrayType arrayType = new ArrayType(type, size);
        return new NewExpression(arrayType, expressionsList);
    }


    @Override
    public String toString() {
        return "New Expression";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + getType().toString() + "\n");
        for (Expression expression : expressionsList) {
            if (expression == null) {
                str.append(Utility.getIndent(indents + 1) + "null\n");
            } else {
                str.append(expression.toString(indents + 1));
            }
        }
        return str.toString();
    }
}
