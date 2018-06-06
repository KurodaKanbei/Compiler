package Compiler.AST.Expression;

import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.ImmediateAddressOperand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class AssignmentExpression extends Expression {
    private Expression leftExpression, rightExpression;

    private AssignmentExpression(Expression leftExpression, Expression rightExpression) {
        super(leftExpression.getType(), true);
        this.leftExpression = leftExpression;
        this.rightExpression = rightExpression;
    }

    public Expression getLeftExpression() {
        return leftExpression;
    }

    public Expression getRightExpression() {
        return rightExpression;
    }

    public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
        if (!leftExpression.isLeftValue()) {
            throw new CompilationError("The left expression in assignment expression is expected to be left-value");
        }
        if (!leftExpression.getType().compatibleWith(rightExpression.getType())) {
            System.out.println(leftExpression.getType());
            System.out.println(rightExpression.getType());
            throw new CompilationError("Assignment expression is expected to contain two compatible expression");
        }
        return new AssignmentExpression(leftExpression, rightExpression);
    }

    @Override
    public boolean equals(Expression rhs) {
        if (!(rhs instanceof AssignmentExpression)) return false;
        return leftExpression.equals(((AssignmentExpression) rhs).getLeftExpression())
                && rightExpression.equals(((AssignmentExpression) rhs).getRightExpression());
    }

    @Override
    public String toString() {
        return "Assignment Expression";
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
        operand = leftExpression.getOperand();
        if (leftExpression.getOperand() instanceof ImmediateAddressOperand && rightExpression.getOperand() instanceof ImmediateAddressOperand) {
            VirtualRegister t = RegisterManager.getTemporaryRegister();
            instructionList.add(new MoveInstruction(t, rightExpression.getOperand()));
            instructionList.add(new MoveInstruction(leftExpression.getOperand(), t));
        } else {
            instructionList.add(new MoveInstruction(leftExpression.getOperand(), rightExpression.getOperand()));
        }
    }
}
