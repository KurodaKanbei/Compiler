package Compiler.CFG.Operand;

import Compiler.CFG.ProgramIR;
import Compiler.Trans.PhysicalOperand.PhysicalImmediateAddressOperand;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.PhysicalOperand.PhysicalRegister;
import Compiler.Trans.Translator;

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
    public Operand getReplaced(VirtualRegister older, VirtualRegister newer) {
        if (this == older) return newer;
        return this;
    }

    @Override
    public void init() {
        Translator.getCurrentFunctionIR().initialize(this);
    }

    @Override
    public String toString() {
        return String.format("%s(%s)", name, getAllocated());
    }

    private String getAllocated() {
        if (systemRegister != null) {
            return systemRegister;
        }
        if (ProgramIR.getCurrentFunction() != null && ProgramIR.getCurrentFunction().getRegisterStringMap().containsKey(this)) {
            return ProgramIR.getCurrentFunction().getRegisterStringMap().get(this);
        }
        return null;
    }

    public String getRegister() {
        if (systemRegister != null) {
            return systemRegister;
        }
        if (Translator.getCurrentFunctionIR() != null && Translator.getCurrentFunctionIR().getRegisterStringMap().containsKey(this)) {
            return Translator.getCurrentFunctionIR().getRegisterStringMap().get(this);
        }
        return null;
    }

    public int getOffset() {
        if (Translator.getCurrentFunctionIR().getRegisterIntegerMap().containsKey(this)) {
            return Translator.getCurrentFunctionIR().getRegisterIntegerMap().get(this);
        } else {
            throw new InternalError("can't find register in function IR map!");
        }
    }

    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        str.append(systemRegister + ":\n");
        str.append("\tdq\t0\n");
        return str.toString();
    }

    @Override
    public PhysicalOperand getPhysicalOperand(StringBuilder str) {
        if (getRegister() != null) {
            return new PhysicalRegister(getRegister());
        } else {
            return new PhysicalImmediateAddressOperand("rbp", -getOffset() * 8);
        }
    }
}
