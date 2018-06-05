package Compiler.CFG.Instruction;

import Compiler.Trans.Translator;

public class JumpInstruction extends Instruction {
    private LabelInstruction target;

    public JumpInstruction(LabelInstruction target) {
        this.target = target;
    }

    public LabelInstruction getTarget() {
        return target;
    }

    public void setTarget(LabelInstruction target) {
        this.target = target;
    }

    @Override
    public boolean hasGlobalImpact() {
        return false;
    }

    @Override
    public void init() {

    }

    @Override
    public void buildSet() {

    }

    @Override
    public String toString() {
        return String.format("jump %s", target.getBlock().toString());
    }

    @Override
    public String getAssembly() {
        return Translator.getInstruction("jmp", target.getBlock().toString());
    }
}
