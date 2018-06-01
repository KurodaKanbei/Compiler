package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Operand.VirtualRegister;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class VirtualRegisterMerger {
    public static boolean mergeRegister(FunctionIR functionIR, Map<VirtualRegister,
            Set<VirtualRegister>> conflict, Map<VirtualRegister, Set<VirtualRegister>> flow) {
        boolean hasImproved = false;
        Set<VirtualRegister> homelessVirtualRegisterSet = new HashSet<>();
        for (Block block : functionIR.getBlockList()) {
            for (Instruction instruction : block.getInstructionList()) {
                for (VirtualRegister virtualRegister : instruction.getKillSet()) {
                    if (virtualRegister.getSystemRegister() == null && !functionIR.getRegisterStringMap().containsKey(virtualRegister)) {
                        homelessVirtualRegisterSet.add(virtualRegister);
                    }
                }
                for (VirtualRegister virtualRegister : instruction.getUseSet()) {
                    if (virtualRegister.getSystemRegister() == null && !functionIR.getRegisterStringMap().containsKey(virtualRegister)) {
                        homelessVirtualRegisterSet.add(virtualRegister);
                    }
                }
            }
        }
        return hasImproved;
    }
}
