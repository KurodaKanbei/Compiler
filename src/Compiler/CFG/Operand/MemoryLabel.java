package Compiler.CFG.Operand;

import Compiler.CFG.ProgramIR;

public class MemoryLabel extends Operand {
    private String label;

    private MemoryLabel(String label) {
        this.label = label;
    }

    public static MemoryLabel getMemoryLabel(String str) {
        ProgramIR.addConstString(str);
        return new MemoryLabel("__string_const" + String.valueOf(ProgramIR.getConstStringList().size() - 1));
    }

    @Override
    public String toString() {
        return label;
    }
}
