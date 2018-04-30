package Compiler.AST.Statement;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Symbol.Symbol;
import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.Type;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class VariableDeclarationStatement extends Statement {
    private Type type;
    private String name;
    private Expression expression;
    private ClassType classScope;
    private Symbol symbol;

    public VariableDeclarationStatement(String name, Type type) {
        this.type = type;
        this.name = name;
        this.expression = null;
        this.classScope = null;
        this.symbol = new Symbol(name, type);
    }

    public void setClassScope(ClassType classScope) {
        this.classScope = classScope;
    }

    public void setExpression(Expression expression) {
        if (!type.compatibleWith(expression.getType())) {
            System.out.println(type);
            System.out.println(expression.getType());
            throw new CompilationError("The types in variable declaration are not compatible");
        }
        this.expression = expression;
    }

    public Type getType() {
        return type;
    }

    public String getName() {
        return name;
    }

    public Expression getExpression() {
        return expression;
    }

    public ClassType getClassScope() {
        return classScope;
    }

    public Symbol getSymbol() {
        return symbol;
    }

    @Override
    public String toString() {
        return "VariableDeclarationStatement" + " type = " + getType() + " name = " + getName();
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        if (getExpression() != null) {
            str.append(Utility.getIndent(indents) + expression.toString());
        }
        return str.toString();
    }
}
