package Compiler.Trans.PhysicalOperand;

public class PhysicalAddressOperand extends PhysicalOperand{
    private String base;
    private int offset;

    public PhysicalAddressOperand(String base, int offset) {
        this.base = base;
        this.offset = offset;
    }

    public String getBase() {
        return base;
    }

    public int getOffset() {
        return offset;
    }

    @Override
    public String toString() {
        if (offset >= 0) {
            return String.format("qword [%s + %d]", base, offset);
        } else {
            return String.format("qword [%s - %d]", base, -offset);
        }
    }
}
