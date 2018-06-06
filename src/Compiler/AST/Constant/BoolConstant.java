package Compiler.AST.Constant;

import Compiler.AST.Type.BoolType;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.Utility.Utility;

import java.util.List;

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

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        operand = new ImmediateOperand(value ? 1 : 0);
    }
}
