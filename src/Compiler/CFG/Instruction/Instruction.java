package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Utility.Utility;

import java.util.HashSet;
import java.util.Set;

public abstract class Instruction {
    Set<VirtualRegister> useSet, killSet, liveIn, liveOut;

    public Instruction() {
        useSet = new HashSet<>();
        killSet = new HashSet<>();
        liveIn = new HashSet<>();
        liveOut = new HashSet<>();
    }

    public abstract void init();

    public abstract String toString();

    public String toString(int indents) {
        return Utility.getIndent(indents) + this.toString() + "\n";
    }

    public abstract String getAssembly();
}
