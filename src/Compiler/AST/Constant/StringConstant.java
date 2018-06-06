package Compiler.AST.Constant;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.StringType;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Operand.MemoryLabel;
import Compiler.Utility.Utility;

import java.util.List;

public class StringConstant extends Constant {
    private String value;

    public StringConstant(String value) {
        super(StringType.getInstance());
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    @Override
    public boolean equals(Expression rhs) {
        if (!(rhs instanceof StringConstant)) return false;
        return value.equals(((StringConstant) rhs).getValue());
    }

    @Override
    public String toString() {
        return "String Constant";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n";
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        operand = MemoryLabel.getMemoryLabel(value);
    }
}
