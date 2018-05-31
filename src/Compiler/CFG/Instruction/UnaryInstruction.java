package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.*;
import Compiler.Trans.Translator;

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
        if (target instanceof VirtualRegister) {
            killSet.add((VirtualRegister) target);
            useSet.add((VirtualRegister) target);
        }
        if (target instanceof AddressOperand) {
            useSet.add(((AddressOperand) target).getBase());
        }
    }

    @Override
    public boolean hasGlobalImpact() {
        if (target instanceof AddressOperand || target instanceof MemoryLabel
                || target instanceof VirtualRegister && ((VirtualRegister) target).isGlobal()) {
            return true;
        }
        return false;
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
                str.append(Translator.getInstruction("add", targetName, "1"));
                return str.toString();
            case DEC:
                str.append(Translator.getInstruction("sub", targetName, "1"));
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
