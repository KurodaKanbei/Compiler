package Compiler.AST.Constant;

import Compiler.AST.Type.BoolType;
import Compiler.AST.Type.Type;
import Compiler.Utility.Utility;

public class BoolConstant extends Constant {
    private boolean value;

    public BoolConstant(boolean value) {
        super(BoolType.getInstance());
        this.value = value;
    }

    public boolean getValue() {
        return value;
    }

    @Override
    public String toString() {
        return "Bool Constant";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + " = " + getValue() + "\n";
    }
}
