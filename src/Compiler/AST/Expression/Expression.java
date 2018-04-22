package Compiler.AST.Expression;

import Compiler.AST.Type.Type;
import Compiler.IR.Operand;

public abstract class Expression {
    private Type type;
    private boolean isLeftValue;
    public Operand operand;

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
