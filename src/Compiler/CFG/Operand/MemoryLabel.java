package Compiler.CFG.Operand;

import Compiler.CFG.ProgramIR;
import Compiler.Trans.PhysicalOperand.PhysicalMemoryLabel;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;

public class MemoryLabel extends Operand {
    private String label;

    private MemoryLabel(String label) {
        this.label = label;
    }

    public static MemoryLabel getMemoryLabel(String str) {
        ProgramIR.addConstString(str);
        return new MemoryLabel("__const_string_" + String.valueOf(ProgramIR.getConstStringList().size() - 1));
    }

    @Override
    public void init() {

    }

    @Override
    public Operand getReplaced(VirtualRegister older, VirtualRegister newer) {
        return this;
    }

    @Override
    public String toString() {
        return label;
    }

    @Override
    public PhysicalOperand getPhysicalOperand(StringBuilder str) {
        return new PhysicalMemoryLabel(label);
    }
}
