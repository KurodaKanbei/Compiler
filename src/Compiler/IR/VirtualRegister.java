package Compiler.IR;

public class VirtualRegister extends Operand {
    private String name;
    private String reg;
    private boolean global;

    public VirtualRegister(String name) {
        this.name = name;
        this.reg = null;
        this.global = false;
    }

    public String getName() {
        return name;
    }

    public String getReg() {
        return reg;
    }

    public boolean isGlobal() {
        return global;
    }
}
