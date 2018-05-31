package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.CJumpInstruction;
import Compiler.CFG.Instruction.CSetInstruction;
import Compiler.CFG.Instruction.CompareInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.ProgramIR;

import java.util.List;

public class LoopConditionManager {
    public static void loopConditionImprove(FunctionIR functionIR) {
        for (Block block : functionIR.getBlockList()) {
            List<Instruction> instructionList = block.getInstructionList();
            for (int i = 0; i < instructionList.size(); i++) {
                if (instructionList.get(i) instanceof CompareInstruction
                        && instructionList.get(i + 1) instanceof CSetInstruction
                        && instructionList.get(i + 2) instanceof CompareInstruction
                        && instructionList.get(i + 3) instanceof CJumpInstruction) {
                    CSetInstruction compareSetInstruction = (CSetInstruction) instructionList.get(i + 1);
                    CompareInstruction compareInstruction = (CompareInstruction) instructionList.get(i + 2);
                    CJumpInstruction compareJumpInstruction = (CJumpInstruction) instructionList.get(i + 3);
                    if (compareSetInstruction.getTarget() == compareInstruction.getLeftOperand()
                            && compareInstruction.getRightOperand() instanceof ImmediateOperand
                            && ((ImmediateOperand) compareInstruction.getRightOperand()).getValue() == 1
                            && compareJumpInstruction.getConditionOp() == ProgramIR.ConditionOp.EQ) {
                        compareJumpInstruction.setConditionOp(compareSetInstruction.getConditionOp());
                        instructionList.remove(i + 1);
                        instructionList.remove(i + 1);
                    }
                }
            }
        }
    }
}
