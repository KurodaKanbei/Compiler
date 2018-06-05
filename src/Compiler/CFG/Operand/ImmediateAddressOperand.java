package Compiler.CFG.Operand;

import Compiler.Trans.PhysicalOperand.PhysicalImmediateAddressOperand;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.Translator;

public class ImmediateAddressOperand extends AddressOperand {
    private VirtualRegister base;
    private ImmediateOperand offset;

    public ImmediateAddressOperand(VirtualRegister base, ImmediateOperand offset) {
        this.base = base;
        this.offset = offset;
    }

    public ImmediateAddressOperand(VirtualRegister base) {
        this.base = base;
        this.offset = new ImmediateOperand(0);
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
    public void replaceVirtualRegister(VirtualRegister older, VirtualRegister newer) {
        if (base == older) base = newer;
    }

    @Override
    public Operand getReplaced(VirtualRegister older, VirtualRegister newer) {
        if (base == older) base = newer;
        return this;
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
            return new PhysicalImmediateAddressOperand(base.getRegister(), offset.getValue());
        } else {
            PhysicalImmediateAddressOperand newBase = new PhysicalImmediateAddressOperand("rbp", -base.getOffset() * 8);
            str.append(Translator.getInstruction("mov", "rcx", newBase.toString()));
            return new PhysicalImmediateAddressOperand("rcx", offset.getValue());
        }
    }
}
