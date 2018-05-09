package Compiler.CFG.Operand;

public class VirtualRegister extends Operand {
    private String name;
    private String systemRegister;
    private boolean isGlobal;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSystemRegister() {
        return systemRegister;
    }

    public void setSystemRegister(String systemRegister) {
        this.systemRegister = systemRegister;
    }

    public boolean isGlobal() {
        return isGlobal;
    }

    public void setGlobal(boolean global) {
        isGlobal = global;
    }

    public VirtualRegister(String name) {
        this.name = name;
        this.systemRegister = null;
        this.isGlobal = false;
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
