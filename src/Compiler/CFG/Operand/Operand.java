package Compiler.CFG.Operand;

import Compiler.Trans.PhysicalOperand.PhysicalOperand;

public abstract class Operand {
    public abstract void init();
    public abstract PhysicalOperand getPhysicalOperand(StringBuilder str);
    public abstract Operand getReplaced(VirtualRegister older, VirtualRegister newer);
}
