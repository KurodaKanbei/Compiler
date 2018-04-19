package Compiler.AST.Type;

import Compiler.Utility.Utility;

public class VoidType extends Type {
    private static final VoidType instance = new VoidType();

    private VoidType() {
    }

    public static VoidType getInstance() {
        return instance;
    }

    @Override
    public boolean compatibleWith(Type rhs) {
        return this == rhs;
    }

    @Override
    public String toString() {
        return "Null";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString();
    }
}
