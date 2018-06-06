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

public class BinaryDivisionExpression extends Expression {
    private Expression leftExpression, rightExpression;
    private static final Map<Integer, Integer> getLog = new HashMap<Integer, Integer>(){{
        for (int i = 0; i < 31; i++) {
            this.put((int) 1L << i, i);
        }
    }};
    private BinaryDivisionExpression(Expression leftexpression, Expression rightExpression) {
        super(IntType.getInstance(), false);
        this.leftExpression = leftexpression;
        this.rightExpression = rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (!(leftExpression.getType() instanceof IntType) || !(rightExpression.getType() instanceof IntType)) {
            throw new CompilationError("Binary division expression is expected to be int type");
        }
        if (leftExpression instanceof IntConstant && rightExpression instanceof IntConstant) {
            int leftValue = ((IntConstant) leftExpression).getValue();
            int rightValue = ((IntConstant) rightExpression).getValue();
            return new IntConstant(leftValue / rightValue);
        }
        return new BinaryDivisionExpression(leftExpression, rightExpression);
    }

    public Expression getLeftExpression() {
        return leftExpression;
    }

    public Expression getRightExpression() {
        return rightExpression;
    }

    @Override
    public boolean equals(Expression rhs) {
        if (!(rhs instanceof BinaryDivisionExpression)) return false;
        return leftExpression.equals(((BinaryDivisionExpression) rhs).getLeftExpression())
                && rightExpression.equals(((BinaryDivisionExpression) rhs).getRightExpression());
    }

    @Override
    public String toString() {
        return "Binary Division Expression";
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
        Operand leftOperand = leftExpression.getOperand();
        Operand rightOperand = rightExpression.getOperand();
        if (leftOperand == rightOperand) {
            operand = new ImmediateOperand(1);
            return;
        }
        if (leftOperand instanceof ImmediateOperand && rightOperand instanceof ImmediateOperand
                && ((ImmediateOperand) leftOperand).getValue() == ((ImmediateOperand) rightOperand).getValue()) {
            operand = new ImmediateOperand(1);
            return;
        }
        if (rightOperand instanceof ImmediateOperand && ((ImmediateOperand) rightOperand).getValue() == 1) {
            operand = leftOperand;
            return;
        }
        operand = RegisterManager.getTemporaryRegister();
        instructionList.add(new MoveInstruction(operand, leftOperand));
        if (leftOperand instanceof ImmediateOperand && getLog.containsKey(((ImmediateOperand) rightOperand).getValue())) {
            instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.SHR, operand, new ImmediateOperand(getLog.get(((ImmediateOperand) rightOperand).getValue()))));
        } else {
            instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.DIV, operand, rightOperand));
        }
    }
}
