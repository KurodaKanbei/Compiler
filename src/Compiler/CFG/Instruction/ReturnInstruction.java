package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.Translator;

import java.util.HashSet;

public class ReturnInstruction extends Instruction {
    private Operand returnValue;

    public ReturnInstruction(Operand returnValue) {
        this.returnValue = returnValue;
        buildSet();
    }

    @Override
    public void buildSet() {
        useSet = new HashSet<>();
        if (returnValue instanceof VirtualRegister) {
            useSet.add((VirtualRegister) returnValue);
        }
        if (returnValue instanceof AddressOperand) {
            useSet.add(((AddressOperand) returnValue).getBase());
        }
    }

    @Override
    public void replaceVirtualRegister(VirtualRegister older, VirtualRegister newer) {
        returnValue = returnValue.replaceVirtualRegister(older, newer);
        buildSet();
    }

    public Operand getReturnValue() {
        return returnValue;
    }

    public void setReturnValue(Operand returnValue) {
        this.returnValue = returnValue;
    }

    @Override
    public boolean hasGlobalImpact() {
        return false;
    }

    @Override
    public void init() {
        returnValue.init();
    }

    @Override
    public String toString() {
        return String.format("ret %s", returnValue);
    }

    @Override
    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        PhysicalOperand physicalOperand = returnValue.getPhysicalOperand(str);
        str.append(Translator.getInstruction("mov", "rax", physicalOperand.toString()));
        return str.toString();
    }
}
