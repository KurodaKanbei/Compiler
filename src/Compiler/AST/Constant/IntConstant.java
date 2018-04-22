package Compiler.AST.Constant;

import Compiler.AST.Type.IntType;
import Compiler.AST.Type.Type;
import Compiler.Utility.Utility;

public class IntConstant extends Constant {
    private int value;

    public IntConstant(int value) {
        super(IntType.getInstance());
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    @Override
    public String toString() {
        return "Int Constant";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + " = " + getValue();
    }
}
