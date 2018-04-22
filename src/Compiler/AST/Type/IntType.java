package Compiler.AST.Type;

import Compiler.Utility.Utility;

public class IntType extends Type {
    private static final IntType instance = new IntType();

    private IntType() {}

    public static IntType getInstance() {
        return instance;
    }

    @Override
    public boolean compatibleWith(Type rhs) {
        return this == rhs;
    }

    @Override
    public String toString() {
        return "Int";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString();
    }
}
