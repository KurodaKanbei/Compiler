package Compiler.AST.Expression.BinaryExpression;

import Compiler.AST.Constant.BoolConstant;
import Compiler.AST.Constant.IntConstant;
import Compiler.AST.Constant.NullConstant;
import Compiler.AST.Constant.StringConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Expression.FunctionCallExpression;
import Compiler.AST.Expression.IdentifierExpression;
import Compiler.AST.Type.BoolType;
import Compiler.AST.Type.StringType;
import Compiler.CFG.Instruction.CSetInstruction;
import Compiler.CFG.Instruction.CompareInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.ProgramIR;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class BinaryNotEqualExpression extends Expression {
    private Expression leftExpression, rightExpression;

    private BinaryNotEqualExpression(Expression leftExpression, Expression rightExpression) {
        super(BoolType.getInstance(), false);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (!(leftExpression.getType().compatibleWith(rightExpression.getType()))) {
            throw new CompilationError("Binary not equal expression needs two compatible types");
        }
        if ((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)) {
            int leftValue = ((IntConstant) leftExpression).getValue();
            int rightValue = ((IntConstant) rightExpression).getValue();
            return new BoolConstant(leftValue != rightValue);
        }
        if ((leftExpression instanceof BoolConstant) && (rightExpression instanceof BoolConstant)) {
            boolean leftValue = ((BoolConstant) leftExpression).getValue();
            boolean rightValue = ((BoolConstant) rightExpression).getValue();
            return new BoolConstant(leftValue != rightValue);
        }
        if ((leftExpression instanceof StringConstant) && (rightExpression instanceof StringConstant)) {
            String leftValue = ((StringConstant) leftExpression).getValue();
            String rightValue = ((StringConstant) rightExpression).getValue();
            return new BoolConstant(!leftValue.equals(rightValue));
        }
        if ((leftExpression instanceof NullConstant) && (rightExpression instanceof NullConstant)) {
            return new BoolConstant(false);
        }
        if (leftExpression.getType() instanceof StringType && rightExpression.getType() instanceof StringType) {
            List<Expression> expressionList = new ArrayList<>();
            expressionList.add(leftExpression);
            expressionList.add(rightExpression);
            return FunctionCallExpression.getExpression(
                    IdentifierExpression.getExpression("__string_NEQ"),
                    expressionList
            );
        }
        return new BinaryNotEqualExpression(leftExpression, rightExpression);
    }

    @Override
    public String toString() {
        return "Binary Not Equal Expression";
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
        if (leftOperand == rightOperand) {
            operand = new ImmediateOperand(0);
            return;
        }
        if (leftOperand instanceof ImmediateOperand && rightOperand instanceof ImmediateOperand) {
            operand = new ImmediateOperand(((ImmediateOperand) leftOperand).getValue() != ((ImmediateOperand) rightOperand).getValue() ? 1 : 0);
            return;
        }
        if (leftOperand instanceof AddressOperand && rightOperand instanceof AddressOperand) {
            VirtualRegister t = RegisterManager.getTemporaryRegister();
            instructionList.add(new MoveInstruction(t, leftOperand));
            instructionList.add(new CompareInstruction(t, rightOperand));
        } else {
            instructionList.add(new CompareInstruction(leftOperand, rightOperand));
        }
        instructionList.add(new CSetInstruction(ProgramIR.ConditionOp.NEQ, operand));
    }
}
