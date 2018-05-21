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

public class BinaryLogicalOrExpression extends Expression {
    private Expression leftExpression, rightExpression;

    private BinaryLogicalOrExpression(Expression leftExpression, Expression rightExpression) {
        super(BoolType.getInstance(), false);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (!(leftExpression.getType() instanceof BoolType) ||
                !(rightExpression.getType() instanceof BoolType)) {
            throw new CompilationError("binary logical and needs bool");
        }
        if ((leftExpression instanceof BoolConstant) && (rightExpression instanceof BoolConstant)) {
            boolean leftValue = ((BoolConstant) leftExpression).getValue();
            boolean rightValue = ((BoolConstant) rightExpression).getValue();
            return new BoolConstant(leftValue || rightValue);
        }
        return new BinaryLogicalOrExpression(leftExpression, rightExpression);
    }

    @Override
    public String toString() {
        return "Binary Logical Or Expression";
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
        leftExpression.generateInstruction(instructionList);
        instructionList.add(new CompareInstruction(leftExpression.getOperand(), new ImmediateOperand(1)));
        instructionList.add(new CJumpInstruction(ProgramIR.ConditionOp.NEQ, falseLabel));
        instructionList.add(new JumpInstruction(trueLabel));

        instructionList.add(trueLabel);
        rightExpression.generateInstruction(instructionList);
        instructionList.add(new MoveInstruction(operand, new ImmediateOperand(1)));
        instructionList.add(new JumpInstruction(exitLabel));

        instructionList.add(falseLabel);
        instructionList.add(new MoveInstruction(operand, rightExpression.getOperand()));
        instructionList.add(new JumpInstruction(exitLabel));

        instructionList.add(exitLabel);
    }
}
