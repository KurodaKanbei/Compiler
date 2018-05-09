package Compiler.CFG.Instruction;

import Compiler.AST.Type.FunctionType;
import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;

import java.util.List;

public class FunctionCallInstruction extends Instruction {
    private FunctionType functionType;
    private VirtualRegister returnValue;
    private List<Operand> operandList;

    public FunctionCallInstruction(FunctionType functionType, VirtualRegister returnValue, List<Operand> operandList) {
        this.functionType = functionType;
        this.returnValue = returnValue;
        this.operandList = operandList;
        if (returnValue != null) {
            killSet.add(returnValue);
        }
        for (Operand operand : operandList) {
            if (operand instanceof VirtualRegister) {
                useSet.add((VirtualRegister) operand);
            }
            if (operand instanceof AddressOperand) {
                useSet.add(((AddressOperand) operand).getBase());
            }
        }
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append(String.format("call %s", functionType.getName()));
        operandList.forEach(operand ->  str.append(" " + operand));
        str.append(String.format("return value = %s", returnValue));
        return str.toString();
    }
}
