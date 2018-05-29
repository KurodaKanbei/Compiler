package Compiler.CFG.Instruction;

import Compiler.AST.Type.FunctionType;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.Translator;

import java.util.ArrayList;
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
    public void init() {
        operandList.forEach(Operand::init);
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append(String.format("call %s", functionType.getName()));
        operandList.forEach(operand -> str.append(" ").append(operand.toString()));
        str.append(String.format(" return value = %s", returnValue));
        return str.toString();
    }

    @Override
    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        List<String> callerList = new ArrayList<>();

        for(VirtualRegister virtualRegister: liveOut) {
            if (Translator.getCurrentFunctionIR().getRegisterStringMap().containsKey(virtualRegister)) {
                String name = Translator.getCurrentFunctionIR().getRegisterStringMap().get(virtualRegister);
                if (FunctionIR.callerSavedRegisterList.contains(name)) {
                    callerList.add(name);
                }
            }
        }

        str.append(Translator.getCallerSaved(callerList));
        int frameSize = operandList.size();

        if ((Translator.getOffset() + frameSize) % 2 == 1) {
            ++frameSize;
            str.append(Translator.getInstruction("sub", "rsp", "8"));
            Translator.addOffset(1);
        }

        for (int i = operandList.size() - 1; i >= 0; i--) {
            PhysicalOperand physicalOperand = operandList.get(i).getPhysicalOperand(str);
            str.append(Translator.getInstruction("push", physicalOperand.toString()));
        }
        str.append(Translator.getInstruction("call", functionType.getName()));

        Translator.subOffset(frameSize);

        if (frameSize > 0) {
            str.append(Translator.getInstruction("add", "rsp", String.valueOf(frameSize * 8)));
        }

        str.append(Translator.getCallerRestored(callerList));

        return str.toString();
    }
}
