package Compiler.AST.Constant;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.NullType;
import Compiler.AST.Type.Type;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.Utility.Utility;

import java.util.List;

public class NullConstant extends Constant {

    public NullConstant() {
        super(NullType.getInstance());
    }

    @Override
    public boolean equals(Expression rhs) {
        return rhs instanceof NullConstant;
    }

    @Override
    public String toString() {
        return "Null Constant";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n";
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        operand = new ImmediateOperand(0);
    }
}
