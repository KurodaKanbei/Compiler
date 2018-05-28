package Compiler.CFG.Operand;

import Compiler.Trans.PhysicalOperand.PhysicalAddressOperand;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.Translator;

public class AddressOperand extends Operand {
    private VirtualRegister base;
    private ImmediateOperand offset;

    public AddressOperand(VirtualRegister base, ImmediateOperand offset) {
        this.base = base;
        this.offset = offset;
    }

    public VirtualRegister getBase() {
        return base;
    }

    public void setBase(VirtualRegister base) {
        this.base = base;
    }

    public ImmediateOperand getOffset() {
        return offset;
    }

    public void setOffset(ImmediateOperand offset) {
        this.offset = offset;
    }

    @Override
    public void init() {
        Translator.getCurrentFunctionIR().initialize(base);
    }

    @Override
    public String toString() {
        return String.format("Address (%s + %s)", base, offset);
    }

    @Override
    public PhysicalOperand getPhysicalOperand(StringBuilder str) {
        if (base.getRegister() != null) {
            return new PhysicalAddressOperand(base.getRegister(), offset.getValue());
        } else {
            PhysicalAddressOperand newBase = new PhysicalAddressOperand("rbp", -base.getOffset() * 8);
            str.append(Translator.getInstruction("mov", "rcx", newBase.toString()));
            return new PhysicalAddressOperand("rcx", offset.getValue());
        }
    }
}
