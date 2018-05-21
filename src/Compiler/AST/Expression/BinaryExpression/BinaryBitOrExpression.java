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

public class BinaryBitOrExpression extends Expression {
    private Expression leftExpression, rightExpression;

    private BinaryBitOrExpression(Expression leftExpression, Expression rightExpression) {
        super(IntType.getInstance(), false);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (leftExpression.getType() instanceof IntType == false || rightExpression.getType() instanceof IntType == false) {
            throw new CompilationError("Binary bit or is expected to be int type");
        }
        if (leftExpression instanceof IntConstant && rightExpression instanceof IntConstant) {
            int leftValue = ((IntConstant) leftExpression).getValue();
            int rightValue = ((IntConstant) rightExpression).getValue();
            return new IntConstant(leftValue | rightValue);
        }
        return new BinaryBitOrExpression(leftExpression, rightExpression);
    }

    @Override
    public String toString() {
        return "Binary Bit Or";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        str.append(leftExpression.toString(indents + 1));
        str.append(rightExpression.toString(indents + 1));
        return str.toString();
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        leftExpression.generateInstruction(instructionList);
        rightExpression.generateInstruction(instructionList);
        operand = RegisterManager.getTemporaryRegister();
        instructionList.add(new MoveInstruction(operand, leftExpression.getOperand()));
        instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.OR, operand, rightExpression.getOperand()));
    }
}
