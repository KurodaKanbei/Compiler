package Compiler.AST.Constant;

import Compiler.AST.Type.StringType;
import Compiler.AST.Type.Type;
import Compiler.Utility.Utility;

public class StringContant extends Constant {
    private String value;

    public StringContant(String value) {
        super(StringType.getInstance());
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    @Override
    public String toString() {
        return "String Constant";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + " = " + getValue() + "\n";
    }
}
