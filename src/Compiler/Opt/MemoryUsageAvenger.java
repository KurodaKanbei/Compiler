package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MallocInstruction;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.ProgramIR;

import java.util.HashSet;
import java.util.Set;

public class MemoryUsageAvenger {
    private static Set<VirtualRegister> mallocVirtualRegister;
    private static Set<VirtualRegister> usefulVirtualRegister;

    public static void unusedMemoryRemove() {
        mallocVirtualRegister = new HashSet<>();
        usefulVirtualRegister = new HashSet<>();
        FunctionIR initFunction = ProgramIR.getFunctionMap().get("__global_init");
        for (Block block : initFunction.getBlockList()) {
            for (Instruction instruction : block.getInstructionList()) {
                if (instruction instanceof MallocInstruction) {
                    VirtualRegister target = ((MallocInstruction) instruction).getTarget();
                    if (target.isGlobal()) {
                        mallocVirtualRegister.add(target);
                    }
                }
            }
        }

        for (FunctionIR functionIR : ProgramIR.getFunctionMap().values()) {
            if (functionIR.getFunctionType().getOriginName().equals("__global_init")) {
                continue;
            }
            for (Block block : functionIR.getBlockList()) {
                for (Instruction instruction : block.getInstructionList()) {
                    usefulVirtualRegister.addAll(instruction.getKillSet());
                    usefulVirtualRegister.addAll(instruction.getUseSet());
                }
            }
        }

        for (Block block : initFunction.getBlockList()) {
            for (int i = 0; i < block.getInstructionList().size(); i++) {
                Instruction instruction = block.getInstructionList().get(i);
                if (instruction instanceof MallocInstruction && !usefulVirtualRegister.contains(((MallocInstruction) instruction).getTarget())) {
                    block.getInstructionList().remove(i--);
                }
            }
        }
    }
}
