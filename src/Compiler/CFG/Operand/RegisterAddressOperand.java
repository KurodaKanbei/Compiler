package Compiler.CFG.Operand;

import Compiler.Trans.PhysicalOperand.PhysicalRegisterAddressOperand;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.Translator;

public class RegisterAddressOperand extends AddressOperand {
    private VirtualRegister base, offset;

    public RegisterAddressOperand(VirtualRegister base, VirtualRegister offset) {
        this.base = base;
        this.offset = offset;
    }

    @Override
    public void replaceVirtualRegister(VirtualRegister older, VirtualRegister newer) {
        if (base == older) base = newer;
        if (offset == older) offset = newer;
    }

    @Override
    public Operand getReplaced(VirtualRegister older, VirtualRegister newer) {
        if (base == older) base = newer;
        if (offset == older) offset = newer;
        return this;
    }

    @Override
    public void init() {
        Translator.getCurrentFunctionIR().initialize(base);
        Translator.getCurrentFunctionIR().initialize(offset);
    }

    @Override
    public String toString() {
        return String.format("Address (%s + %s)", base, offset);
    }

    @Override
    public PhysicalOperand getPhysicalOperand(StringBuilder str) {
        return new PhysicalRegisterAddressOperand(base.getRegister(), offset.getRegister());
    }
}
