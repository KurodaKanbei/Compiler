package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.CJumpInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.JumpInstruction;
import Compiler.CFG.Operand.VirtualRegister;

import java.util.*;

public class LivenessAnalysis {
    public static Map<VirtualRegister, Set<VirtualRegister>> edge;
    public static Map<VirtualRegister, Set<VirtualRegister>> flow;
    public static Map<VirtualRegister, Integer> count;
    private static FunctionIR currentFunctionIR;

    public LivenessAnalysis(FunctionIR functionIR) {
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
                            if (!assigned.contains(virtualRegister) && !block.getUseSet().contains(virtualRegister)) {
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
    }

    private static void addControlFlow(Block source, Block target) {
        source.addBlockOut(target);
        target.addBlockIn(source);
    }

    private static void calcBlock() {

    }

    private static void calcInstr() {

    }

    private static void merge(Map<VirtualRegister, Integer> count, Set<VirtualRegister> occur) {

    }

    private static void merge(Set<VirtualRegister> sum, Set<VirtualRegister> delta) {

    }
}
