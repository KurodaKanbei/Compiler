package Compiler.AST.Constant;

import Compiler.AST.Type.NullType;
import Compiler.AST.Type.Type;
import Compiler.Utility.Utility;

public class NullConstant extends Constant {

    public NullConstant() {
        super(NullType.getInstance());
    }

    @Override
    public String toString() {
        return "Null Constant";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n";
    }
}
