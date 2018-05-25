package Compiler.Trans.PhysicalOperand;

public class PhysicalRegister extends PhysicalOperand {
    private String name;

    public PhysicalRegister(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return name;
    }
}
