package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;

public class MallocInstruction extends Instruction {
    private VirtualRegister target;
    private Operand mallocSize;

    public MallocInstruction(VirtualRegister target, Operand mallocSize) {
        this.target = target;
        this.mallocSize = mallocSize;
        killSet.add(target);
        if (mallocSize instanceof  VirtualRegister) {
            useSet.add((VirtualRegister) mallocSize);
        }
        if (mallocSize instanceof AddressOperand) {
            useSet.add((((AddressOperand) mallocSize).getBase()));
        }
    }

    public VirtualRegister getTarget() {
        return target;
    }

    public Operand getMallocSize() {
        return mallocSize;
    }

    @Override
    public void init() {
        target.init();
        mallocSize.init();
    }

    @Override
    public String toString() {
        return String.format("malloc %s %s", getTarget(), getMallocSize());
    }

    @Override
    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        PhysicalOperand physicalOperand = mallocSize.getPhysicalOperand(str);
        
    }
}
