package Compiler.AST.Expression;

import Compiler.AST.Type.ArrayType;
import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.Type;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class NewExpression extends Expression{
    private List<Expression> expressionList;

    private NewExpression(Type type, List<Expression> expressionList) {
        super(type, false);
        this.expressionList = expressionList;
    }

    public static Expression getExpression(Type type, List<Expression> expressionsList) {
        int size = expressionsList.size();
        if (type instanceof ClassType == false && size == 0) {
            throw new CompilationError("Can't new a basic type");
        }
        if (size != 0) {
            if (expressionsList.get(0) == null) {
                throw new CompilationError("Creation Error");
            }
            boolean valid = true;
            for (Expression expression : expressionsList) {
                if (expression == null) {
                    valid = false;
                }
            }
            if (!valid) {
                throw new CompilationError("Creation Error");
            }
        }
        if (size == 0) {
            return new NewExpression(type, expressionsList);
        } else {
            Type arrayType = new ArrayType(type, size);
            return new NewExpression(arrayType, expressionsList);
        }
    }

    @Override
    public String toString() {
        return "New Expression";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        expressionList.forEach(expression -> str.append(expression.toString(indents + 1)));
        return str.toString();
    }
}
