package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.ImmediateAddressOperand;
import Compiler.CFG.Operand.MemoryLabel;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Trans.PhysicalOperand.PhysicalImmediateAddressOperand;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.Translator;

import java.util.HashSet;

public class MoveInstruction extends Instruction {
    private Operand target, source;

    public MoveInstruction(Operand target, Operand source) {
        if (target instanceof ImmediateAddressOperand && source instanceof ImmediateAddressOperand) {
            throw new InternalError("Move Instruction can't handle two address");
        }
        this.target = target;
        this.source = source;
        build();
    }

    private void build() {
        killSet = new HashSet<>();
        useSet = new HashSet<>();
        if (target instanceof VirtualRegister) {
            killSet.add((VirtualRegister) target);
        }
        if (target instanceof ImmediateAddressOperand) {
            useSet.add(((ImmediateAddressOperand) target).getBase());
        }
        if (source instanceof VirtualRegister) {
            useSet.add((VirtualRegister) source);
        }
        if (source instanceof ImmediateAddressOperand) {
            useSet.add(((ImmediateAddressOperand) source).getBase());
        }
    }

    @Override
    public boolean hasGlobalImpact() {
        if (target instanceof ImmediateAddressOperand || target instanceof MemoryLabel
                || target instanceof VirtualRegister && ((VirtualRegister) target).isGlobal()) {
            return true;
        }
        if (source instanceof ImmediateAddressOperand || source instanceof MemoryLabel
                || source instanceof VirtualRegister && ((VirtualRegister) source).isGlobal()) {
            return true;
        }
        return false;
    }

    public Operand getTarget() {
        return target;
    }

    public void setTarget(Operand target) {
        this.target = target;
        build();
    }

    public Operand getSource() {
        return source;
    }

    public void setSource(Operand source) {
        this.source = source;
    }

    @Override
    public void init() {
        target.init();
        source.init();
    }

    @Override
    public String toString() {
        return String.format("%s = mov %s", target, source);
    }

    @Override
    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        PhysicalOperand physicalTarget, physicalSource;
        physicalTarget = target.getPhysicalOperand(str);
        physicalSource = source.getPhysicalOperand(str);
        String targetName, sourceName;
        targetName = physicalTarget.toString();
        sourceName = physicalSource.toString();
        if (physicalTarget instanceof PhysicalImmediateAddressOperand && physicalSource instanceof PhysicalImmediateAddressOperand) {
            str.append(Translator.getInstruction("mov", "rax", sourceName));
            str.append(Translator.getInstruction("mov", targetName, "rax"));
        } else {
            str.append(Translator.getInstruction("mov", targetName, sourceName));
        }
        return str.toString();
    }
}
