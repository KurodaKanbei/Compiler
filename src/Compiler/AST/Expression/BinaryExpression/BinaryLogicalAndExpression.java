package Compiler.AST.Expression.BinaryExpression;

import Compiler.AST.Constant.BoolConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.BoolType;
import Compiler.CFG.Instruction.*;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.ProgramIR;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class BinaryLogicalAndExpression extends Expression {
    private Expression leftExpression, rightExpression;

    private BinaryLogicalAndExpression(Expression leftExpression, Expression rightExpression) {
        super(BoolType.getInstance(), false);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (!(leftExpression.getType() instanceof BoolType) ||
                !(rightExpression.getType() instanceof BoolType)) {
            throw new CompilationError("Binary logical and expression needs bool");
        }
        if ((leftExpression instanceof BoolConstant) && (rightExpression instanceof BoolConstant)) {
            boolean leftValue = ((BoolConstant) leftExpression).getValue();
            boolean rightValue = ((BoolConstant) rightExpression).getValue();
            return new BoolConstant(leftValue && rightValue);
        }
        return new BinaryLogicalAndExpression(leftExpression, rightExpression);
    }

    @Override
    public String toString() {
        return "Binary Logical And Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + leftExpression.toString(indents + 1)
                + rightExpression.toString(indents + 1);
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        LabelInstruction trueLabel, falseLabel, exitLabel;
        trueLabel = new LabelInstruction("logical_true");
        falseLabel = new LabelInstruction("logical_false");
        exitLabel = new LabelInstruction("logical_exit");
        operand = RegisterManager.getTemporaryRegister();
        if (leftExpression instanceof BinaryLogicalOrExpression) {
            ((BinaryLogicalOrExpression) leftExpression).generateInstructionWithExit(instructionList, null, falseLabel);
        } else if (leftExpression instanceof BinaryLogicalAndExpression) {
            ((BinaryLogicalAndExpression) leftExpression).generateInstructionWithExit(instructionList, null, falseLabel);
        } else {
            leftExpression.generateInstruction(instructionList);
        }
        instructionList.add(new CompareInstruction(leftExpression.getOperand(), new ImmediateOperand(1)));
        instructionList.add(new CJumpInstruction(ProgramIR.ConditionOp.NEQ, falseLabel));
        instructionList.add(new JumpInstruction(trueLabel));

        instructionList.add(trueLabel);
        rightExpression.generateInstruction(instructionList);
        instructionList.add(new MoveInstruction(operand, rightExpression.getOperand()));
        instructionList.add(new JumpInstruction(exitLabel));

        instructionList.add(falseLabel);
        instructionList.add(new MoveInstruction(operand, new ImmediateOperand(0)));
        instructionList.add(new JumpInstruction(exitLabel));

        instructionList.add(exitLabel);
    }

    public void generateInstructionWithExit(List<Instruction> instructionList, LabelInstruction trueExit, LabelInstruction falseExit) {
        LabelInstruction trueLabel, falseLabel, exitLabel;
        trueLabel = new LabelInstruction("logical_true");
        falseLabel = new LabelInstruction("logical_false");
        exitLabel = new LabelInstruction("logical_exit");
        LabelInstruction realFalseExit;
        realFalseExit = falseExit != null ? falseExit : falseLabel;
        operand = RegisterManager.getTemporaryRegister();
        if (leftExpression instanceof BinaryLogicalOrExpression) {
            ((BinaryLogicalOrExpression) leftExpression).generateInstructionWithExit(instructionList, null, realFalseExit);
        } else if (leftExpression instanceof BinaryLogicalAndExpression) {
            ((BinaryLogicalAndExpression) leftExpression).generateInstructionWithExit(instructionList, null, realFalseExit);
        } else {
            leftExpression.generateInstruction(instructionList);
        }
        instructionList.add(new CompareInstruction(leftExpression.getOperand(), new ImmediateOperand(1)));
        instructionList.add(new CJumpInstruction(ProgramIR.ConditionOp.NEQ, realFalseExit));
        instructionList.add(new JumpInstruction(trueLabel));

        instructionList.add(trueLabel);
        rightExpression.generateInstruction(instructionList);
        instructionList.add(new MoveInstruction(operand, rightExpression.getOperand()));
        instructionList.add(new JumpInstruction(exitLabel));

        instructionList.add(falseLabel);
        instructionList.add(new MoveInstruction(operand, new ImmediateOperand(0)));
        instructionList.add(new JumpInstruction(exitLabel));

        instructionList.add(exitLabel);
    }
}
