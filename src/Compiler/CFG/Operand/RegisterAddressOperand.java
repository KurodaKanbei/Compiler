package Compiler.CFG.Operand;

import Compiler.Trans.PhysicalOperand.PhysicalRegisterAddressOperand;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.Translator;

public class RegisterAddressOperand extends Operand {
    VirtualRegister base, offset;

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
