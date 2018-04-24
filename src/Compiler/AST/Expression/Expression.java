package Compiler.AST.Expression;

import Compiler.AST.Type.Type;

public abstract class Expression {
    private Type type;
    private boolean isLeftValue;

    public Expression(Type type, boolean isLeftValue) {
        this.type = type;
        this.isLeftValue = isLeftValue;
    }

    public Type getType() {
        return type;
    }

    public boolean isLeftValue() {
        return isLeftValue;
    }

    public abstract String toString(int indents);
}
