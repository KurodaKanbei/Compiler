package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.CJumpInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.JumpInstruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;

import java.util.*;

public class LivenessAnalyst {
    private static Map<VirtualRegister, Set<VirtualRegister>> edge;
    private static Map<VirtualRegister, Set<VirtualRegister>> flow;
    private static Map<VirtualRegister, Integer> count;
    private static FunctionIR currentFunctionIR;

    public static Map<VirtualRegister, Set<VirtualRegister>> getEdge() {
        return edge;
    }

    public static Map<VirtualRegister, Set<VirtualRegister>> getFlow() {
        return flow;
    }

    public static Map<VirtualRegister, Integer> getCount() {
        return count;
    }

    public static void analysis(FunctionIR functionIR) {
        currentFunctionIR = functionIR;
        edge = new HashMap<>();
        flow = new HashMap<>();
        count = new HashMap<>();
        init();
        calcBlock();
        calcInstr();
    }

    private static void init() {
        for (Block block : currentFunctionIR.getBlockList()) {
            Set<VirtualRegister> assigned = new HashSet<>();
            for (Instruction instruction : block.getInstructionList()) {
                merge(count, instruction.getUseSet());
                merge(count, instruction.getKillSet());
                instruction.getUseSet().forEach(
                        virtualRegister -> {
                            if (!assigned.contains(virtualRegister)) {
                                block.getUseSet().add(virtualRegister);
                            }
                        }
                );
                merge(assigned, instruction.getKillSet());
                merge(block.getKillSet(), instruction.getKillSet());
                if (instruction instanceof JumpInstruction) {
                    Block target = ((JumpInstruction) instruction).getTarget().getBlock();
                    addControlFlow(block, target);
                }
                if (instruction instanceof CJumpInstruction) {
                    Block target = ((CJumpInstruction) instruction).getTarget().getBlock();
                    addControlFlow(block, target);
                }
            }
        }
        currentFunctionIR.getBlockList().forEach(Block::calcLiveIn);
    }

    private static void addControlFlow(Block source, Block target) {
        source.addBlockOut(target);
        target.addBlockIn(source);
    }

    private static void calcBlock() {
        boolean hasIncrement = true;
        while (hasIncrement) {
            hasIncrement = false;
            for (Block block : currentFunctionIR.getBlockList()) {
                for (Block nxt : block.getBlockOutSet()) {
                    hasIncrement |= merge(block.getLiveOut(), nxt.getLiveIn());
                }
                block.calcLiveIn();
            }
        }
    }

    private static void calcInstr() {
        for (Block block : currentFunctionIR.getBlockList()) {
            int n = block.getInstructionList().size();
            for (int i = n - 1; i >= 0; i--) {
                Instruction instruction = block.getInstructionList().get(i);
                //System.out.println(instruction.toString());
                if (instruction instanceof JumpInstruction) {
                    if (i != n - 1) {
                        throw new InternalError("jump instruction must be the last one of the block");
                    }
                    instruction.setLiveOut(new HashSet<>(((JumpInstruction) instruction).getTarget().getBlock().getLiveIn()));
                }
                if (instruction instanceof CJumpInstruction) {
                    if (i != n - 2) {
                        throw new InternalError("compare jump instruction must be the last but one");
                    }
                    instruction.setLiveOut(new HashSet<>(((CJumpInstruction) instruction).getTarget().getBlock().getLiveIn()));
                    merge(instruction.getLiveOut(), block.getInstructionList().get(i + 1).getLiveIn());
                }
                if (!(instruction instanceof JumpInstruction) && !(instruction instanceof CJumpInstruction)) {
                    if (i < n - 1) {
                        instruction.setLiveOut(new HashSet<>(block.getInstructionList().get(i + 1).getLiveIn()));
                    }
                }
                instruction.calcLiveIn();
                if (instruction instanceof MoveInstruction) {
                    Operand source = ((MoveInstruction) instruction).getSource();
                    Operand target = ((MoveInstruction) instruction).getTarget();
                    for (VirtualRegister killed : instruction.getKillSet()) {
                        for (VirtualRegister lived : instruction.getLiveOut()) {
                            if (source instanceof VirtualRegister && !instruction.getUseSet().contains(lived)) {
                                addConflictEdge(killed, lived);
                            }
                            if (!(source instanceof VirtualRegister)) {
                                addConflictEdge(killed, lived);
                            }
                        }
                    }
                    if (source instanceof VirtualRegister && target instanceof VirtualRegister) {
                        addMoveEdge((VirtualRegister) target, (VirtualRegister) source);
                    }
                }
                if (!(instruction instanceof  MoveInstruction)) {
                    for (VirtualRegister killed : instruction.getKillSet()) {
                        for (VirtualRegister lived : instruction.getLiveOut()) {
                            addConflictEdge(killed, lived);
                        }
                    }
                }
            }
        }
    }

    private static void addConflictEdge(VirtualRegister x, VirtualRegister y) {
        if (inMemory(x) || inMemory(y) || x == y) {
            return;
        }
        edge.get(x).add(y);
        edge.get(y).add(x);
    }

    private static void addMoveEdge(VirtualRegister target, VirtualRegister source) {
        if (inMemory(target) || inMemory(source) || target == source) {
            return;
        }
        flow.get(target).add(source);
    }

    private static boolean inMemory(VirtualRegister virtualRegister) {
        return currentFunctionIR.getRegisterIntegerMap().containsKey(virtualRegister) || virtualRegister.isGlobal();
    }

    private static void merge(Map<VirtualRegister, Integer> count, Set<VirtualRegister> occur) {
        for (VirtualRegister virtualRegister : occur) {
            if (!inMemory(virtualRegister)) {
                if (!count.containsKey(virtualRegister)) {
                    count.put(virtualRegister, 0);
                    edge.put(virtualRegister, new HashSet<>());
                    flow.put(virtualRegister, new HashSet<>());
                }
                int num = count.get(virtualRegister);
                count.put(virtualRegister, ++num);
            }
        }
    }

    private static boolean merge(Set<VirtualRegister> sum, Set<VirtualRegister> delta) {
        boolean hasIncrement = false;
        for (VirtualRegister virtualRegister : delta) {
            if (!sum.contains(virtualRegister)) {
                sum.add(virtualRegister);
                hasIncrement = true;
            }
        }
        return hasIncrement;
    }
}
