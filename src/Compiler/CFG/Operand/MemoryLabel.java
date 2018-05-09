package Compiler.CFG.Operand;

public class MemoryLabel extends Operand {
    private String label;

    public MemoryLabel(String label) {
        this.label = label;
    }

    @Override
    public String toString() {
        return label;
    }
}
