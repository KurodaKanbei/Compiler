package Compiler.AST.Type;

import Compiler.Utility.Utility;

public class NullType extends Type {
    private static final NullType instance = new NullType();

    private NullType() {}

    public static NullType getInstance() {
        return instance;
    }

    @Override
    public boolean compatibleWith(Type rhs) {
        return  this == rhs
                || rhs instanceof ArrayType
                || rhs instanceof ClassType;
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
