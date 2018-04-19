package Compiler.AST.Type;

import Compiler.Utility.Utility;

public class ArrayType extends Type {
    private Type baseType;
    private int dimension;

    public ArrayType(Type baseType, int dimension) {
        this.baseType = baseType;
        this.dimension = dimension;
    }

    public Type getBaseType() {
        return baseType;
    }

    public int getDimension() {
        return dimension;
    }

    public Type reduceDimension() {
        int newDimension = this.dimension - 1;
        if (newDimension == 0) {
            return baseType;
        } else {
            return new ArrayType(baseType, newDimension);
        }
    }

    @Override
    public boolean compatibleWith(Type rhs) {
        if (rhs == NullType.getInstance()) return true;
        if (rhs instanceof ArrayType
                && baseType.compatibleWith(((ArrayType) rhs).getBaseType())
                && dimension == ((ArrayType) rhs).getDimension()) return true;
        return false;
    }

    @Override
    public String toString() {
        return "Array: " + " Dimension = " + dimension + " BaseType = " + baseType;
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString();
    }

}
