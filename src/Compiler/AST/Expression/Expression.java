package Compiler.AST.Expression;

import Compiler.AST.Type.Type;
import Compiler.IR.Operand;

public abstract class Expression {
    private Type type;
    private boolean leftValue;
    public Operand operand;

    public Expression(Type type, boolean leftValue) {
        this.type = type;
        this.leftValue = leftValue;
    }

    public Type getType() {
        return type;
    }

    public boolean isLeftValue() {
        return leftValue;
    }

    public abstract String toString(int indents);
}
