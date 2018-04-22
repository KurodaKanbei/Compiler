package Compiler.AST.Type;

import Compiler.Utility.Utility;

public class BoolType extends Type {
    private static final BoolType instance = new BoolType();

    public static BoolType getInstance() {
        return instance;
    }

    private BoolType() {}

    @Override
    public boolean compatibleWith(Type rhs) {
        return this == rhs;
    }

    @Override
    public String toString() {
        return "Boolean";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString();
    }
}
