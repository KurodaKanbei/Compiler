package Compiler.AST.Expression;

import Compiler.AST.Type.Type;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Operand.Operand;

import java.util.List;

public abstract class Expression {
    private Type type;
    private boolean isLeftValue;
    protected Operand operand;

    public Expression(Type type, boolean isLeftValue) {
        this.type = type;
        this.isLeftValue = isLeftValue;
    }

    public abstract boolean equals(Expression rhs);

    public Type getType() {
        return type;
    }

    public boolean isLeftValue() {
        return isLeftValue;
    }

    public Operand getOperand() {
        return operand;
    }

    public void setOperand(Operand operand) {
        this.operand = operand;
    }

    public abstract String toString();

    public abstract String toString(int indents);

    public abstract void generateInstruction(List<Instruction> instructionList);
}
