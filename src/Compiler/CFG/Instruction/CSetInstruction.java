package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.ProgramIR;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.Translator;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public class CSetInstruction extends Instruction {
    private ProgramIR.ConditionOp conditionOp;
    private VirtualRegister target;
    private static final Map<String, String> lowRegister = new HashMap<String, String>() {{
        put("rax", "al");
        put("rcx", "cl");
        put("rdx", "dl");
        put("rbx", "bl");
        put("rsp", "spl");
        put("rbp", "bpl");
        put("rsi", "sil");
        put("rdi", "dil");
        put("r8", "r8b");
        put("r9", "r9b");
        put("r10", "r10b");
        put("r11", "r11b");
        put("r12", "r12b");
        put("r13", "r13b");
        put("r14", "r14b");
        put("r15", "r15b");
    }};

    public CSetInstruction(ProgramIR.ConditionOp conditionOp, Operand target) {
        this.conditionOp = conditionOp;
        if (!(target instanceof VirtualRegister)) {
            throw new InternalError("target of compare set instruction is expected to be virtual register");
        }
        this.target = (VirtualRegister) target;
        buildSet();
    }

    public ProgramIR.ConditionOp getConditionOp() {
        return conditionOp;
    }

    public VirtualRegister getTarget() {
        return target;
    }

    public void setConditionOp(ProgramIR.ConditionOp conditionOp) {
        this.conditionOp = conditionOp;
    }

    public void setTarget(VirtualRegister target) {
        this.target = target;
    }

    @Override
    public void buildSet() {
        killSet = new HashSet<>();
        useSet = new HashSet<>();
        killSet.add(target);
    }

    @Override
    public void replaceVirtualRegister(VirtualRegister older, VirtualRegister newer) {
        target = (VirtualRegister) target.replaceVirtualRegister(older, newer);
        buildSet();
    }

    @Override
    public boolean hasGlobalImpact() {
        return false;
    }

    @Override
    public void init() {
        target.init();
    }

    @Override
    public String toString() {
        return String.format("set %s %s", conditionOp, target);
    }

    @Override
    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        PhysicalOperand targetOperand = target.getPhysicalOperand(str);
        String targetName = targetOperand.toString();
        if (Translator.getCurrentFunctionIR().getRegisterIntegerMap().containsKey(target)) {
            str.append(Translator.getInstruction("mov", "rax", targetName));
            str.append(Translator.getInstruction("mov", "rax", "0"));
            str.append(Translator.getInstruction("set" + Translator.getAssemblyCondition(conditionOp), "al"));
            str.append(Translator.getInstruction("mov", targetName, "rax"));
        } else {
            str.append(Translator.getInstruction("mov", targetName, "0"));
            str.append(Translator.getInstruction("set" + Translator.getAssemblyCondition(conditionOp), lowRegister.get(targetName)));
        }
        return str.toString();
    }
}
