package Compiler.AST.Expression.BinaryExpression;

import Compiler.AST.Constant.IntConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.CFG.Instruction.BinaryInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BinaryMultiplyExpression extends Expression {
    private Expression leftExpression, rightExpression;
    private static final Map<Integer, Integer> getLog = new HashMap<Integer, Integer>(){{
        for (int i = 0; i < 31; i++) {
            this.put((int) 1L << i, i);
        }
    }};

    private BinaryMultiplyExpression(Expression leftExpression, Expression rightExpressoin) {
        super(IntType.getInstance(), false);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpressoin;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (!(leftExpression.getType() instanceof IntType) ||
                !(rightExpression.getType() instanceof IntType)) {
            throw new CompilationError("Binary multiply expression needs int type");
        }
        if ((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)) {
            int leftValue = ((IntConstant) leftExpression).getValue();
            int rightValue = ((IntConstant) rightExpression).getValue();
            return new IntConstant(leftValue * rightValue);
        }
        return new BinaryMultiplyExpression(leftExpression, rightExpression);
    }

    public Expression getLeftExpression() {
        return leftExpression;
    }

    public Expression getRightExpression() {
        return rightExpression;
    }

    @Override
    public boolean equals(Expression rhs) {
        if (!(rhs instanceof BinaryMultiplyExpression)) return false;
        return leftExpression.equals(((BinaryMultiplyExpression) rhs).getLeftExpression())
                && rightExpression.equals(((BinaryMultiplyExpression) rhs).getRightExpression());
    }

    @Override
    public String toString() {
        return "Binary Multiply Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + leftExpression.toString(indents + 1)
                + rightExpression.toString(indents + 1);
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        leftExpression.generateInstruction(instructionList);
        rightExpression.generateInstruction(instructionList);
        operand = RegisterManager.getTemporaryRegister();
        Operand leftOperand, rightOperand;
        leftOperand = leftExpression.getOperand();
        rightOperand = rightExpression.getOperand();
        if (leftOperand instanceof ImmediateOperand) {
            int value = ((ImmediateOperand) leftOperand).getValue();
            if (value == 0) {
                operand = new ImmediateOperand(0);
                return;
            }
            if (value == 1) {
                operand = rightOperand;
                return;
            }
            instructionList.add(new MoveInstruction(operand, rightOperand));
            if (getLog.containsKey(value)) {
                instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.SHL, operand, new ImmediateOperand(getLog.get(value))));
                return;
            }
            instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.MUL, operand, leftOperand));
            return;
        }
        if (rightExpression.getOperand() instanceof ImmediateOperand) {
            int value = ((ImmediateOperand) rightOperand).getValue();
            if (value == 0) {
                operand = new ImmediateOperand(0);
                return;
            }
            if (value == 1) {
                operand = leftOperand;
                return;
            }
            instructionList.add(new MoveInstruction(operand, leftOperand));
            if (getLog.containsKey(value)) {
                instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.SHL, operand, new ImmediateOperand(getLog.get(value))));
                return;
            }
            instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.MUL, operand, rightOperand));
            return;
        }
        instructionList.add(new MoveInstruction(operand, leftOperand));
        instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.MUL, operand, rightOperand));
    }
}
