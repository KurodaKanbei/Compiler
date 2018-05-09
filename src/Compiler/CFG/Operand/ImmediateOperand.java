package Compiler.CFG.Operand;

public class ImmediateOperand extends Operand {
    private int value;

    public ImmediateOperand(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }
}
