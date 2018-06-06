package Compiler.AST.Expression.BinaryExpression;

import Compiler.AST.Constant.IntConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.CFG.Instruction.BinaryInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class BinaryRightShiftExpression  extends Expression {
    private Expression leftExpression, rightExpression;

    private BinaryRightShiftExpression(Expression leftExpression, Expression rightExpression) {
        super(IntType.getInstance(), false);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (!(leftExpression.getType() instanceof IntType) || !(rightExpression.getType() instanceof IntType)) {
            throw new CompilationError("Binary right shift expression needs int type");
        }
        if ((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)) {
            int leftValue = ((IntConstant) leftExpression).getValue();
            int rightValue = ((IntConstant) rightExpression).getValue();
            return new IntConstant(leftValue >> rightValue);
        }
        return new BinaryRightShiftExpression(leftExpression, rightExpression);
    }

    public Expression getLeftExpression() {
        return leftExpression;
    }

    public Expression getRightExpression() {
        return rightExpression;
    }

    @Override
    public boolean equals(Expression rhs) {
        if (!(rhs instanceof BinaryRightShiftExpression)) return false;
        return leftExpression.equals(((BinaryRightShiftExpression) rhs).getLeftExpression())
                && rightExpression.equals(((BinaryRightShiftExpression) rhs).getRightExpression());
    }

    @Override
    public String toString() {
        return "Binary Right Shift Expression";
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
        instructionList.add(new MoveInstruction(operand, leftExpression.getOperand()));
        instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.SHR, operand, rightExpression.getOperand()));
    }
}
