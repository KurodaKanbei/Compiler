package Compiler.CFG.Operand;

import Compiler.Trans.PhysicalOperand.PhysicalImmediateOperand;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;

public class ImmediateOperand extends Operand {
    private int value;

    public ImmediateOperand(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    @Override
    public void init() {

    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    @Override
    public PhysicalOperand getPhysicalOperand(StringBuilder str) {
        return new PhysicalImmediateOperand(value);
    }
}
