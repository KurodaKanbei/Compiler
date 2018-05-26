package Compiler.CFG.Instruction;

import Compiler.CFG.ProgramIR;
import Compiler.Trans.Translator;

public class CJumpInstruction extends Instruction {
    private ProgramIR.ConditionOp conditionOp;
    private LabelInstruction target;

    public CJumpInstruction(ProgramIR.ConditionOp conditionOp, LabelInstruction target) {
        this.conditionOp = conditionOp;
        this.target = target;
    }

    public ProgramIR.ConditionOp getConditionOp() {
        return conditionOp;
    }

    public LabelInstruction getTarget() {
        return target;
    }

    @Override
    public void init() {

    }

    @Override
    public String toString() {
        return String.format("CJump %s %s", conditionOp, target);
    }

    @Override
    public String getAssembly() {
        return Translator.getInstruction("j" + Translator.getAssemblyCondition(conditionOp), target.toString());
    }
}
