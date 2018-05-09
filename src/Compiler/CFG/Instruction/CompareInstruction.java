package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;

public class CompareInstruction extends Instruction {
    private Operand leftOperand, rightOperand;

    public Operand getLeftOperand() {
        return leftOperand;
    }

    public Operand getRightOperand() {
        return rightOperand;
    }

    public CompareInstruction(Operand leftOperand, Operand rightOperand) {
        this.leftOperand = leftOperand;
        this.rightOperand = rightOperand;
        if (leftOperand instanceof AddressOperand && rightOperand instanceof AddressOperand) {
            throw new InternalError("compare instruction can't handle tow memory address");
        }
        if (leftOperand instanceof VirtualRegister) {
            useSet.add((VirtualRegister) leftOperand);
        }
        if (leftOperand instanceof AddressOperand) {
            useSet.add(((AddressOperand) leftOperand).getBase());
        }
        if (rightOperand instanceof VirtualRegister) {
            useSet.add((VirtualRegister) rightOperand);
        }
        if (rightOperand instanceof AddressOperand) {
            useSet.add(((AddressOperand) rightOperand).getBase());
        }
    }

    @Override
    public String toString() {
        return String.format("cmp %s %s", leftOperand, rightOperand);
    }
}
