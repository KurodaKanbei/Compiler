package Compiler.CFG.Operand;

public abstract class AddressOperand extends Operand {
    public abstract void replaceVirtualRegister(VirtualRegister older, VirtualRegister newer);
}
