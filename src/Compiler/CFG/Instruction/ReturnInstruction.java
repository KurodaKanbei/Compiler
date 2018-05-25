package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;

public class ReturnInstruction extends Instruction {
    private Operand returnValue;

    public ReturnInstruction(Operand returnValue) {
        this.returnValue = returnValue;
        if (returnValue instanceof VirtualRegister) {
            useSet.add((VirtualRegister) returnValue);
        }
        if (returnValue instanceof AddressOperand) {
            useSet.add(((AddressOperand) returnValue).getBase());
        }
    }

    @Override
    public void init() {
        returnValue.init();
    }

    @Override
    public String toString() {
        return String.format("ret %s", returnValue);
    }
}
