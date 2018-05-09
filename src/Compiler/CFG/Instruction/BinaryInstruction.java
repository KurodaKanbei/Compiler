package Compiler.CFG.Instruction;

import Compiler.AST.Expression.BinaryExpression.BinaryNotEqualExpression;
import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Utility.Error.InternalError;

public class BinaryInstruction extends Instruction {
    private enum BinaryOp {
        ADD, SUB, MUL, DIV, MOD, SHL, SHR, AND, OR, XOR
    }

    private BinaryOp binaryOp;
    private Operand target, source;

    public BinaryOp getBinaryOp() {
        return binaryOp;
    }

    public Operand getTarget() {
        return target;
    }

    public Operand getSource() {
        return source;
    }

    public BinaryInstruction(BinaryOp binaryOp, Operand target, Operand source) {
        this.binaryOp = binaryOp;
        this.target = target;
        this.source = source;
        if (target instanceof ImmediateOperand) {
            throw new InternalError("The target operand in binary is not expected to be immediate");
        }
        if (target instanceof AddressOperand && source instanceof AddressOperand) {
            throw new InternalError("Binary Instruction can't handle two memory address");
        }
        if (target instanceof AddressOperand) {
            if (binaryOp == BinaryOp.DIV || binaryOp == BinaryOp.MOD || binaryOp == BinaryOp.SHL || binaryOp == BinaryOp.SHR) {
                throw new InternalError("Target of div, mod, shl, shr can't be memory address");
            }
        }
        if (target instanceof VirtualRegister) {
            killSet.add((VirtualRegister) target);
            useSet.add((VirtualRegister) target);
        }
        if (target instanceof AddressOperand) {
            useSet.add(((AddressOperand) target).getBase());
        }
        if (source instanceof VirtualRegister) {
            useSet.add((VirtualRegister) source);
        }
        if (source instanceof AddressOperand) {
            useSet.add(((AddressOperand) source).getBase());
        }
    }

    @Override
    public String toString() {
        return String.format("%s = %s %s %s", target, target, binaryOp, source);
    }
}
