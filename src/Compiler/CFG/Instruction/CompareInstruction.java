package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.ImmediateAddressOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Trans.PhysicalOperand.PhysicalImmediateAddressOperand;
import Compiler.Trans.PhysicalOperand.PhysicalImmediateOperand;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.Translator;

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
        if (leftOperand instanceof ImmediateAddressOperand && rightOperand instanceof ImmediateAddressOperand) {
            throw new InternalError("compare instruction can't handle tow memory address");
        }
        if (leftOperand instanceof VirtualRegister) {
            useSet.add((VirtualRegister) leftOperand);
        }
        if (leftOperand instanceof ImmediateAddressOperand) {
            useSet.add(((ImmediateAddressOperand) leftOperand).getBase());
        }
        if (rightOperand instanceof VirtualRegister) {
            useSet.add((VirtualRegister) rightOperand);
        }
        if (rightOperand instanceof ImmediateAddressOperand) {
            useSet.add(((ImmediateAddressOperand) rightOperand).getBase());
        }
    }

    @Override
    public boolean hasGlobalImpact() {
        return false;
    }

    @Override
    public void init() {
        leftOperand.init();
        rightOperand.init();
    }

    @Override
    public String toString() {
        return String.format("cmp %s %s", leftOperand, rightOperand);
    }

    @Override
    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        PhysicalOperand physicalLeft, physicalRight;
        physicalLeft = leftOperand.getPhysicalOperand(str);
        physicalRight = rightOperand.getPhysicalOperand(str);
        String leftName, rightName;
        leftName = physicalLeft.toString();
        rightName = physicalRight.toString();
        if (physicalLeft instanceof PhysicalImmediateAddressOperand && physicalRight instanceof PhysicalImmediateAddressOperand || physicalLeft instanceof PhysicalImmediateOperand) {
            str.append(Translator.getInstruction("mov", "rax", leftName));
            str.append(Translator.getInstruction("cmp", "rax", rightName));
        } else {
            str.append(Translator.getInstruction("cmp", leftName, rightName));
        }
        return str.toString();
    }
}
