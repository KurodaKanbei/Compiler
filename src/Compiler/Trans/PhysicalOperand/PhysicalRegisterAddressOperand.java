package Compiler.Trans.PhysicalOperand;

public class PhysicalRegisterAddressOperand extends PhysicalOperand{
    String base, offset;

    public PhysicalRegisterAddressOperand(String base, String offset) {
        this.base = base;
        this.offset = offset;
    }

    @Override
    public String toString() {
        return String.format("qword [%s %s]", base, offset);
    }
}
