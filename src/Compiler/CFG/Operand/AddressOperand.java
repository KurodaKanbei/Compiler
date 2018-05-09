package Compiler.CFG.Operand;

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
    public String toString() {
        return String.format("Address (%s + %s)", base, offset);
    }
}
