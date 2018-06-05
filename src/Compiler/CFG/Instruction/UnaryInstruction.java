package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.*;
import Compiler.Trans.Translator;

import java.util.HashSet;

public class UnaryInstruction extends Instruction {
    public enum UnaryOp {
        INC, DEC, REV, NEG
    }

    private UnaryOp unaryOp;
    private Operand target;

    public UnaryOp getUnaryOp() {
        return unaryOp;
    }

    public Operand getTarget() {
        return target;
    }

    public UnaryInstruction(UnaryOp unaryOp, Operand target) {
        if (target instanceof ImmediateOperand) {
            throw new InternalError("Target of unary instruction can't be immediate");
        }
        this.unaryOp = unaryOp;
        this.target = target;
        buildSet();
    }

    @Override
    public void buildSet() {
        killSet = new HashSet<>();
        useSet = new HashSet<>();
        if (target instanceof VirtualRegister) {
            killSet.add((VirtualRegister) target);
            useSet.add((VirtualRegister) target);
        }
        if (target instanceof ImmediateAddressOperand) {
            useSet.add(((ImmediateAddressOperand) target).getBase());
        }
        if (target instanceof RegisterAddressOperand) {
            useSet.add(((RegisterAddressOperand) target).getBase());
            useSet.add(((RegisterAddressOperand) target).getOffset());
        }
    }

    @Override
    public boolean hasGlobalImpact() {
        return target instanceof ImmediateAddressOperand || target instanceof MemoryLabel
                || target instanceof VirtualRegister && ((VirtualRegister) target).isGlobal();
    }

    @Override
    public void init() {
        target.init();
    }

    @Override
    public String toString() {
        return String.format("%s %s", unaryOp, target);
    }

    @Override
    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        String targetName = target.getPhysicalOperand(str).toString();
        switch (unaryOp) {
            case INC:
                str.append(Translator.getInstruction("inc", targetName));
                return str.toString();
            case DEC:
                str.append(Translator.getInstruction("dec", targetName));
                return str.toString();
            case NEG:
                str.append(Translator.getInstruction("neg", targetName));
                return str.toString();
            case REV:
                str.append(Translator.getInstruction("not", targetName));
                return str.toString();
        }
        throw new InternalError("the type of unary operator is wrong");
    }
}
