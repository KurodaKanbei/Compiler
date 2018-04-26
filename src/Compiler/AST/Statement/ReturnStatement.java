package Compiler.AST.Statement;

import Compiler.AST.Expression.Expression;
import Compiler.AST.ProgramAST;
import Compiler.AST.Type.FunctionType;
import Compiler.AST.Type.Type;
import Compiler.AST.Type.VoidType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class ReturnStatement extends Statement{
    private FunctionType functionType;
    private Expression expression;

    public ReturnStatement(Expression expression) {
        FunctionType functionType = ProgramAST.symbolTable.getCurrentFunction();
        if (functionType == null) {
            throw new CompilationError("The return statement is expected to be in a function scope");
        }
        this.functionType = functionType;
        String name = functionType.getName();
        if (name == null && expression != null) {
            throw new CompilationError("The construct function is not expected to contain a return expression");
        }
        if (name != null) {
            Type returnType = functionType.getReturnType();
           if (expression == null && returnType.compatibleWith(VoidType.getInstance())) {
               throw new CompilationError("The void function is not expected to contain non-void return expression");
           }
           if (expression != null && returnType.compatibleWith(expression.getType())) {
               throw new CompilationError("The function type is not compatible with the return expression type");
           }
        }
        this.expression = expression;
    }

    public FunctionType getFunctionType() {
        return functionType;
    }

    public void setFunctionType(FunctionType functionType) {
        this.functionType = functionType;
    }

    public Expression getExpression() {
        return expression;
    }

    public void setExpression(Expression expression) {
        this.expression = expression;
    }

    @Override
    public String toString() {
        return "Return Statement";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        if (expression != null) {
            str.append(expression.toString(indents + 1));
        }
        return str.toString();
    }
}
