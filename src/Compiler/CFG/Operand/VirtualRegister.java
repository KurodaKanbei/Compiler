package Compiler.CFG.Operand;

import Compiler.Trans.PhysicalOperand.PhysicalAddressOperand;
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
    public void init() {
        Translator.getCurrentFunctionIR().initialize(this);
    }

    @Override
    public String toString() {
        return name;
    }

    public String getRegister() {
        if (systemRegister != null) {
            return systemRegister;
        }
        if (Translator.getCurrentFunctionIR().getRegisterStringMap().containsKey(this)) {
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

    @Override
    public PhysicalOperand getPhysicalOperand(StringBuilder str) {
        if (getRegister() != null) {
            return new PhysicalRegister(getRegister());
        } else {
            return new PhysicalAddressOperand("rbp", -getOffset() * 8);
        }
    }
}
