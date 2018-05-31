package Compiler.CFG;

import Compiler.CFG.Instruction.*;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Utility.Utility;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Block {
    private FunctionIR functionIR;
    private String name;
    private int id;
    private LabelInstruction labelInstruction;
    private List<Instruction> instructionList;
    private Set<VirtualRegister> useSet, killSet, liveIn, liveOut;
    private Set<Block> blockInSet, blockOutSet;
    private boolean hasJump;

    public Block(FunctionIR functionIR, LabelInstruction labelInstruction, String name, int id) {
        this.functionIR = functionIR;
        this.name = name;
        this.id = id;
        this.labelInstruction = labelInstruction;
        this.instructionList = new ArrayList<>();
        this.useSet = new HashSet<>();
        this.killSet = new HashSet<>();
        this.liveIn = new HashSet<>();
        this.liveOut = new HashSet<>();
        this.blockInSet = new HashSet<>();
        this.blockOutSet = new HashSet<>();
        this.hasJump = false;
    }

    public FunctionIR getFunctionIR() {
        return functionIR;
    }

    public String getName() {
        return name;
    }

    public int getId() {
        return id;
    }

    public LabelInstruction getLabelInstruction() {
        return labelInstruction;
    }

    public List<Instruction> getInstructionList() {
        return instructionList;
    }

    public Set<VirtualRegister> getUseSet() {
        return useSet;
    }

    public Set<VirtualRegister> getKillSet() {
        return killSet;
    }

    public Set<VirtualRegister> getLiveIn() {
        return liveIn;
    }

    public Set<VirtualRegister> getLiveOut() {
        return liveOut;
    }

    public Set<Block> getBlockInSet() {
        return blockInSet;
    }

    public Set<Block> getBlockOutSet() {
        return blockOutSet;
    }

    public boolean isHasJump() {
        return hasJump;
    }

    public Block getTarget() {
        Instruction instruction = instructionList.get(instructionList.size() - 1);
        if (instruction instanceof JumpInstruction) {
            return ((JumpInstruction) instruction).getTarget().getBlock();
        }
        throw new InternalError("The last instruction of a block must be Jump");
    }

    public Boolean canBeReduced() {
        return instructionList.size() == 1;
    }

    public void convertTarget(Block block) {
        JumpInstruction jumpInstruction = (JumpInstruction) instructionList.get(instructionList.size() - 1);
        jumpInstruction.setTarget(block.getLabelInstruction());
    }

    public void clear() {
        killSet = new HashSet<>();
        useSet = new HashSet<>();
        instructionList = new ArrayList<>();
        hasJump = false;
    }

    public void addInstruction(Instruction instruction) {
        if (hasJump) {
            return;
        }
        if (instruction instanceof JumpInstruction) {
            hasJump = true;
        }
        instructionList.add(instruction);
    }

    public void addBlockOut(Block block) {
        blockOutSet.add(block);
    }

    public void addBlockIn(Block block) {
        blockInSet.add(block);
    }

    public void calcLiveIn() {
        liveIn = new HashSet<>(useSet);
        for (VirtualRegister virtualRegister : liveOut) {
            if (!killSet.contains(virtualRegister)) {
                liveIn.add(virtualRegister);
            }
        }
    }

    public boolean onlyContainsNaiveAssign() {
        for (Instruction instruction : instructionList) {
            if (!(instruction instanceof BinaryInstruction || instruction instanceof MoveInstruction
                    || instruction instanceof JumpInstruction || instruction instanceof CJumpInstruction
                    || instruction instanceof CompareInstruction || instruction instanceof UnaryInstruction
                    || instruction instanceof CSetInstruction)) {
                return false;
            }
            if (instruction instanceof BinaryInstruction && !(((BinaryInstruction) instruction).getTarget() instanceof VirtualRegister)) {
                return false;
            }
            if (instruction instanceof MoveInstruction && !(((MoveInstruction) instruction).getTarget() instanceof  VirtualRegister)) {
                return false;
            }
            if (instruction instanceof UnaryInstruction && !(((UnaryInstruction) instruction).getTarget() instanceof VirtualRegister)) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return String.format("%s_%d_%s", functionIR.getFunctionType().getIRName(), getId(), getName());
    }

    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        instructionList.forEach(instruction -> str.append(instruction.toString(indents + 1)));
        return str.toString();
    }
}
