package Compiler.Opt;

import Compiler.AST.Statement.ForStatement;
import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.JumpInstruction;
import Compiler.CFG.Operand.VirtualRegister;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class BlocksRazor {

    public static void deadForStatementBlocksRemove(FunctionIR functionIR) {
        Set<ForStatement> checkedSet = new HashSet<>();
        int labelSize = 4;
        for (int i = 0, j; i < functionIR.getBlockList().size(); i++) {
            Block block = functionIR.getBlockList().get(i);
            if (block.getLabelInstruction().getBelongTo() instanceof ForStatement) {
                ForStatement forStatement = (ForStatement) block.getLabelInstruction().getBelongTo();
                if (checkedSet.contains(forStatement)) continue;
                checkedSet.add(forStatement);
                int cnt = 0;
                boolean valid = true;
                for (j = i; j < functionIR.getBlockList().size(); j++) {
                    Block appendedBlock = functionIR.getBlockList().get(j);
                    if (appendedBlock.getLabelInstruction().getBelongTo() == forStatement) {
                        ++cnt;
                        if (cnt == labelSize) break;
                    }
                    valid = appendedBlock.onlyContainsNaiveAssign();
                    if (!valid) break;
                }
                if (!valid) continue;
                Set<VirtualRegister> killSet = new HashSet<>();
                Set<VirtualRegister> liveSet = new HashSet<>(functionIR.getBlockList().get(j).getLiveIn());
                for (int k = i; k < j; k++) {
                    merge(killSet, functionIR.getBlockList().get(k).getKillSet());
                }
                boolean canBeResolved = true;
                for (VirtualRegister virtualRegister : killSet) {
                    if (liveSet.contains(virtualRegister)) {
                        canBeResolved = false;
                        break;
                    }
                }
                if (!canBeResolved) continue;
                for (int k = i; k < j; k++) {
                    functionIR.getBlockList().get(k).clear();
                    functionIR.getBlockList().get(k).addInstruction(new JumpInstruction(functionIR.getBlockList().get(k + 1).getLabelInstruction()));
                }
            }
        }
    }

    private static void merge(Set<VirtualRegister> sum, Set<VirtualRegister> delta) {
        sum.addAll(delta);
    }
}
