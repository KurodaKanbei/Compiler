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


    public Set<VirtualRegister> getUseSet() {
        return useSet;
    }

    public Set<VirtualRegister> getKillSet() {
        return killSet;
    }

    public void setLiveIn(Set<VirtualRegister> liveIn) {
        this.liveIn = liveIn;
    }

    public void setLiveOut(Set<VirtualRegister> liveOut) {
        this.liveOut = liveOut;
    }

    public Set<VirtualRegister> getLiveIn() {
        return liveIn;
    }

    public Set<VirtualRegister> getLiveOut() {
        return liveOut;
    }

    public void calcLiveIn() {
        liveIn = new HashSet<>(useSet);
        for (VirtualRegister virtualRegister : liveOut) {
            if (!killSet.contains(virtualRegister)) {
                liveIn.add(virtualRegister);
            }
        }
    }

    public abstract void init();

    public abstract String toString();

    public String toString(int indents) {
        return Utility.getIndent(indents) + this.toString() + "\n";
    }

    public abstract String getAssembly();

    public abstract boolean hasGlobalImpact();

    public abstract void buildSet();

    public abstract void replaceVirtualRegister(VirtualRegister older, VirtualRegister newer);
}
