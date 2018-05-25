package Compiler.Trans.PhysicalOperand;

public class PhysicalImmediateOperand extends PhysicalOperand {
    private int value;

    public PhysicalImmediateOperand(int value) {
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
