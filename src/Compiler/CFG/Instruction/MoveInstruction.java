package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.*;
import Compiler.Trans.PhysicalOperand.PhysicalAddressOperand;
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
        buildSet();
    }

    @Override
    public void buildSet() {
        killSet = new HashSet<>();
        useSet = new HashSet<>();
        if (target instanceof VirtualRegister) {
            killSet.add((VirtualRegister) target);
        }
        if (target instanceof ImmediateAddressOperand) {
            useSet.add(((ImmediateAddressOperand) target).getBase());
        }
        if (target instanceof RegisterAddressOperand) {
            useSet.add(((RegisterAddressOperand) target).getBase());
            useSet.add(((RegisterAddressOperand) target).getOffset());
        }
        if (source instanceof VirtualRegister) {
            useSet.add((VirtualRegister) source);
        }
        if (source instanceof ImmediateAddressOperand) {
            useSet.add(((ImmediateAddressOperand) source).getBase());
        }
        if (source instanceof RegisterAddressOperand) {
            useSet.add(((RegisterAddressOperand) source).getBase());
            useSet.add(((RegisterAddressOperand) source).getOffset());
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
        buildSet();
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
        if (physicalTarget instanceof PhysicalAddressOperand && physicalSource instanceof PhysicalAddressOperand) {
            str.append(Translator.getInstruction("mov", "rax", sourceName));
            str.append(Translator.getInstruction("mov", targetName, "rax"));
        } else {
            str.append(Translator.getInstruction("mov", targetName, sourceName));
        }
        return str.toString();
    }
}
