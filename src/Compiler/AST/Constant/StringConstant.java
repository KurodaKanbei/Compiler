package Compiler.AST.Constant;

import Compiler.AST.Type.StringType;
import Compiler.AST.Type.Type;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Operand.MemoryLabel;
import Compiler.Utility.Utility;

import java.util.List;

import static Compiler.CFG.Operand.MemoryLabel.getMemoryLabel;

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
