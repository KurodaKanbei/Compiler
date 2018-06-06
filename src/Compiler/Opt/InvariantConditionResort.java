package Compiler.Opt;

import Compiler.AST.Statement.ForStatement;
import Compiler.AST.Statement.IfStatement;
import Compiler.AST.Statement.Statement;
import Compiler.CFG.Block;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.Instruction.*;
import Compiler.CFG.Operand.VirtualRegister;

import java.util.List;


public class InvariantConditionResort {
    public static void invariantCodeResort(FunctionIR functionIR) {
        for (int i = 0; i + 14 < functionIR.getBlockList().size(); i++) {
            if (isLoop(functionIR, i, i + 1, i + 13, i + 14)
                    && isLoop(functionIR, i + 2, i + 3, i + 11, i + 12)
                    && isLoop(functionIR, i + 4, i + 5, i + 9, i + 10)
                    && isBranch(functionIR, i + 6, i + 7, i + 8)) {
                if (functionIR.getBlockList().get(i).getInstructionList().size() == 5
                        && functionIR.getBlockList().get(i + 1).getInstructionList().size() == 2
                        && functionIR.getBlockList().get(i + 2).getInstructionList().size() == 5
                        && functionIR.getBlockList().get(i + 3).getInstructionList().size() == 2
                        && functionIR.getBlockList().get(i + 4).getInstructionList().size() == 5
                        && functionIR.getBlockList().get(i + 5).getInstructionList().size() == 5) {
                    Block block_i = functionIR.getBlockList().get(i);
                    Block block_j = functionIR.getBlockList().get(i + 2);
                    Block block_if = functionIR.getBlockList().get(i + 5);
                    if (block_i.getInstructionList().get(0) instanceof CompareInstruction
                            && block_j.getInstructionList().get(0) instanceof CompareInstruction
                            && block_if.getInstructionList().get(0) instanceof CompareInstruction) {
                        CompareInstruction compareInstruction1 = (CompareInstruction) block_i.getInstructionList().get(0);
                        CompareInstruction compareInstruction2 = (CompareInstruction) block_j.getInstructionList().get(0);
                        CompareInstruction compareInstruction3 = (CompareInstruction) block_if.getInstructionList().get(0);
                        if (compareInstruction1.getLeftOperand() instanceof VirtualRegister
                                && compareInstruction2.getLeftOperand() instanceof VirtualRegister
                                && compareInstruction3.getLeftOperand() instanceof VirtualRegister
                                && compareInstruction3.getRightOperand() instanceof VirtualRegister) {
                            VirtualRegister virtualRegister1 = (VirtualRegister) compareInstruction1.getLeftOperand();
                            VirtualRegister virtualRegister2 = (VirtualRegister) compareInstruction2.getLeftOperand();
                            if (virtualRegister1 == compareInstruction3.getLeftOperand() && virtualRegister2 == compareInstruction3.getRightOperand()
                                    || virtualRegister1 == compareInstruction3.getRightOperand() && virtualRegister2 == compareInstruction3.getLeftOperand()) {
                                LabelInstruction labelInstruction = new LabelInstruction("resort_condition");
                                Block insertedBlock = new Block(functionIR, labelInstruction, labelInstruction.getName(), functionIR.getBlockList().size());
                                labelInstruction.setBlock(insertedBlock);
                                insertedBlock.getInstructionList().addAll(block_if.getInstructionList());
                                if (insertedBlock.getInstructionList().get(3) instanceof CJumpInstruction
                                        && insertedBlock.getInstructionList().get(4) instanceof JumpInstruction) {
                                    ((CJumpInstruction) insertedBlock.getInstructionList().get(3)).setTarget(functionIR.getBlockList().get(i + 3).getLabelInstruction());
                                    ((JumpInstruction) insertedBlock.getInstructionList().get(4)).setTarget(functionIR.getBlockList().get(i + 11).getLabelInstruction());
                                    if (functionIR.getBlockList().get(i + 2).getInstructionList().get(3) instanceof CJumpInstruction) {
                                        ((CJumpInstruction) functionIR.getBlockList().get(i + 2).getInstructionList().get(3)).setTarget(insertedBlock.getLabelInstruction());
                                        block_if.getInstructionList().clear();
                                        block_if.getInstructionList().add(new JumpInstruction(functionIR.getBlockList().get(i + 6).getLabelInstruction()));
                                        List<Instruction> instructionList =  functionIR.getBlockList().get(i + 6).getInstructionList();
                                        functionIR.getBlockList().get(i + 6).setInstructionList(instructionList.subList(0, 39));
                                        functionIR.getBlockList().get(i + 6).getInstructionList().add(new JumpInstruction(functionIR.getBlockList().get(i + 8).getLabelInstruction()));
                                        functionIR.getBlockList().remove(i + 7);
                                        functionIR.getBlockList().add(i + 3, insertedBlock);
                                        //System.out.println(functionIR.toString(0));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static boolean isLoop(FunctionIR functionIR, int conditionIndex, int bodyIndex, int incrementIndex, int exitIndex) {
        Statement loop1 = functionIR.getBlockList().get(conditionIndex).getLabelInstruction().getBelongTo();
        Statement loop2 = functionIR.getBlockList().get(bodyIndex).getLabelInstruction().getBelongTo();
        Statement loop3 = functionIR.getBlockList().get(incrementIndex).getLabelInstruction().getBelongTo();
        Statement loop4 = functionIR.getBlockList().get(exitIndex).getLabelInstruction().getBelongTo();
        return loop1 instanceof ForStatement && loop2 instanceof ForStatement && loop3 instanceof ForStatement && loop4 instanceof ForStatement &&
                loop1 == loop2 && loop2 == loop3 && loop3 == loop4;
    }

    private static boolean isBranch(FunctionIR functionIR, int trueIndex, int falseIndex, int exitIndex) {
        Statement branch1 = functionIR.getBlockList().get(trueIndex).getLabelInstruction().getBelongTo();
        Statement branch2 = functionIR.getBlockList().get(falseIndex).getLabelInstruction().getBelongTo();
        Statement branch3 = functionIR.getBlockList().get(exitIndex).getLabelInstruction().getBelongTo();
        return branch1 instanceof IfStatement && branch2 instanceof IfStatement && branch3 instanceof IfStatement
                && branch1 == branch2 && branch2 == branch3;
    }
}
