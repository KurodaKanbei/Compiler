package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;

public class UnaryInstruction extends Instruction {
    private enum UnaryOp {
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
    public String toString() {
        return String.format("%s %s", unaryOp, target);
    }
}
