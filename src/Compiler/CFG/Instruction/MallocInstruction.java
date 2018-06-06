package Compiler.CFG.Instruction;

import Compiler.CFG.FunctionIR;
import Compiler.CFG.Operand.ImmediateAddressOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.RegisterAddressOperand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.Translator;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class MallocInstruction extends Instruction {
    private VirtualRegister target;
    private Operand mallocSize;

    public MallocInstruction(VirtualRegister target, Operand mallocSize) {
        this.target = target;
        this.mallocSize = mallocSize;
        buildSet();
    }


    public VirtualRegister getTarget() {
        return target;
    }

    public Operand getMallocSize() {
        return mallocSize;
    }

    @Override
    public void buildSet() {
        killSet = new HashSet<>();
        useSet = new HashSet<>();
        killSet.add(target);
        if (mallocSize instanceof  VirtualRegister) {
            useSet.add((VirtualRegister) mallocSize);
        }
        if (mallocSize instanceof ImmediateAddressOperand) {
            useSet.add((((ImmediateAddressOperand) mallocSize).getBase()));
        }
        if (mallocSize instanceof RegisterAddressOperand) {
            useSet.add(((RegisterAddressOperand) mallocSize).getBase());
            useSet.add(((RegisterAddressOperand) mallocSize).getOffset());
        }
    }

    @Override
    public boolean hasGlobalImpact() {
        return true;
    }

    @Override
    public void replaceVirtualRegister(VirtualRegister older, VirtualRegister newer) {
        target = (VirtualRegister) target.getReplaced(older, newer);
        mallocSize = mallocSize.getReplaced(older, newer);
        buildSet();
    }

    @Override
    public void init() {
        target.init();
        mallocSize.init();
    }

    @Override
    public String toString() {
        return String.format("malloc %s %s", getTarget(), getMallocSize());
    }

    @Override
    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        PhysicalOperand physicalSize = mallocSize.getPhysicalOperand(str);
        List<String> callerList = new ArrayList<>();
        liveOut.forEach(virtualRegister -> {
            if (Translator.getCurrentFunctionIR().getRegisterStringMap().containsKey(virtualRegister)) {
                String name = Translator.getCurrentFunctionIR().getRegisterStringMap().get(virtualRegister);
                if (FunctionIR.callerSavedRegisterList.contains(name)) {
                    callerList.add(name);
                }
            }
        });

        str.append(Translator.getCallerSaved(callerList));
        str.append(Translator.getInstruction("mov", "rdi", physicalSize.toString()));
        str.append(Translator.getLibCall("malloc"));
        str.append(Translator.getCallerRestored(callerList));

        PhysicalOperand physicalTarget = target.getPhysicalOperand(str);
        str.append(Translator.getInstruction("mov", physicalTarget.toString(), "rax"));

        return str.toString();
    }
}
