package Compiler.AST.Constant;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.AST.Type.Type;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.Utility.Utility;

import java.util.List;

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
    public boolean equals(Expression rhs) {
        if (!(rhs instanceof IntConstant)) return false;
        return value == ((IntConstant) rhs).getValue();
    }

    @Override
    public String toString() {
        return "Int Constant";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + " = " + getValue();
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        operand = new ImmediateOperand(value);
    }
}
