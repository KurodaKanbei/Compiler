package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.ProgramIR;

import java.util.HashMap;
import java.util.Map;

public class CSetInstruction extends Instruction {
    private ProgramIR.ConditionOp conditionOp;
    private Operand target;
    static final Map<String, String> lowRegister = new HashMap<String, String>() {{
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
        this.target = target;
        if (!(target instanceof VirtualRegister)) {
            throw new InternalError("target of compare set instruction is expected to be virtual register");
        }
        killSet.add((VirtualRegister) target);
    }

    @Override
    public void init() {
        target.init();
    }

    @Override
    public String toString() {
        return String.format("set %s %s", conditionOp, target);
    }
}
