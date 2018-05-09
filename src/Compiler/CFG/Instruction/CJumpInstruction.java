package Compiler.CFG.Instruction;

import Compiler.CFG.ProgramIR;

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
    public String toString() {
        return String.format("CJump %s %s", conditionOp, target);
    }
}
