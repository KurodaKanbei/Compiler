package Compiler.AST.Type;

import Compiler.Utility.Utility;

public class StringType extends Type {
    private static final StringType instance = new StringType();

    public static StringType getInstance() {
        return instance;
    }

    @Override
    public boolean compatibleWith(Type rhs) {
        return this == rhs;
    }

    @Override
    public String toString() {
        return "String";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString();
    }
}
