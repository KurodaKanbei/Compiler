package Compiler.Opt;

import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.*;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.ProgramIR;

import java.util.ArrayList;
import java.util.List;

public class FoolishConditionMonitor {
    /*layout
     block1
        cmp f1(rbx) 1
		CJump EQ main_169_if_true
		jump main_171_if_exit
	 block2 main_169_if_true
		INC ans(r14)
		jump main_171_if_exit

	 block3 main_171_if_exit
     */
    public static void stupidConditionRemove(FunctionIR functionIR) {
        if (functionIR.getBeMemorized()) return;
        for (int k = 0; k + 2 < functionIR.getBlockList().size(); k++) {
            Block block1 = functionIR.getBlockList().get(k);
            Block block2 = functionIR.getBlockList().get(k + 1);
            Block block3 = functionIR.getBlockList().get(k + 2);
            if (block1.getInstructionList().size() != 3 || block2.getInstructionList().size() != 2) continue;
            List<Instruction> instructionList = new ArrayList<>();
            instructionList.addAll(block1.getInstructionList());
            instructionList.addAll(block2.getInstructionList());
            if (instructionList.get(0) instanceof CompareInstruction
                    && instructionList.get(1) instanceof CJumpInstruction
                    && instructionList.get(2) instanceof JumpInstruction
                    && instructionList.get(3) instanceof UnaryInstruction
                    && instructionList.get(4) instanceof JumpInstruction) {
                CompareInstruction compareInstruction = (CompareInstruction) instructionList.get(0);
                if (compareInstruction.getLeftOperand() instanceof VirtualRegister
                        && compareInstruction.getRightOperand() instanceof ImmediateOperand
                        && ((ImmediateOperand) compareInstruction.getRightOperand()).getValue() == 1) {
                    CJumpInstruction cJumpInstruction = (CJumpInstruction) instructionList.get(1);
                    if (cJumpInstruction.getConditionOp() == ProgramIR.ConditionOp.EQ
                            & cJumpInstruction.getTarget() == block2.getLabelInstruction()) {
                        LabelInstruction trueLabel = block2.getLabelInstruction();
                        LabelInstruction falseLabel = block3.getLabelInstruction();
                        if (trueLabel.getBelongTo() == falseLabel.getBelongTo()) {
                            UnaryInstruction unaryInstruction = (UnaryInstruction) instructionList.get(3);
                            if (unaryInstruction.getUnaryOp() == UnaryInstruction.UnaryOp.INC || unaryInstruction.getUnaryOp() == UnaryInstruction.UnaryOp.DEC) {
                                JumpInstruction jumpInstruction1 = (JumpInstruction) instructionList.get(2);
                                JumpInstruction jumpInstruction2 = (JumpInstruction) instructionList.get(4);
                                if (jumpInstruction1.getTarget() == falseLabel && jumpInstruction2.getTarget() == falseLabel) {
                                    functionIR.getBlockList().remove(k + 1);
                                    block1.getInstructionList().clear();
                                    if (unaryInstruction.getUnaryOp() == UnaryInstruction.UnaryOp.INC) {
                                        block1.getInstructionList().add(new BinaryInstruction(BinaryInstruction.BinaryOp.ADD, unaryInstruction.getTarget(), compareInstruction.getLeftOperand()));
                                    }
                                    if (unaryInstruction.getUnaryOp() == UnaryInstruction.UnaryOp.DEC) {
                                        block2.getInstructionList().add(new BinaryInstruction(BinaryInstruction.BinaryOp.SUB, unaryInstruction.getTarget(), compareInstruction.getLeftOperand()));
                                    }
                                    block1.addInstruction(new JumpInstruction(block3.getLabelInstruction()));
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
