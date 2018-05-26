package Compiler.CFG.Instruction;

import Compiler.CFG.Block;

public class LabelInstruction extends Instruction {
    private String name;
    private Block block;

    public LabelInstruction(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Block getBlock() {
        return block;
    }

    public void setBlock(Block block) {
        this.block = block;
    }

    public LabelInstruction() {
        super();
    }

    @Override
    public void init() {

    }

    @Override
    public String toString() {
        return String.format("Label %s", name);
    }

    @Override
    public String getAssembly() {
        throw new InternalError("the label instruction can't be convert to assembly");
    }
}
