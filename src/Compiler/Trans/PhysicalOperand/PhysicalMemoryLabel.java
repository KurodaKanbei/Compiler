package Compiler.Trans.PhysicalOperand;

public class PhysicalMemoryLabel extends PhysicalOperand {
    private String label;

    public PhysicalMemoryLabel(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }

    @Override
    public String toString() {
        return label;
    }
}
