package Compiler.AST.Expression.UnaryExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.BoolType;
import Compiler.CFG.Instruction.BinaryInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class UnaryNotExpression extends Expression {
    private Expression expression;

    private UnaryNotExpression(Expression expression) {
        super(BoolType.getInstance(), false);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (!(expression.getType() instanceof BoolType)) {
            throw new CompilationError("Unary not expression is expected to be bool type");
        }
        return new UnaryNotExpression(expression);
    }

    @Override
    public String toString() {
        return "Unary Not Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n" + expression.toString(indents + 1);
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        expression.generateInstruction(instructionList);
        operand = RegisterManager.getTemporaryRegister();
        instructionList.add(new MoveInstruction(operand, expression.getOperand()));
        instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.XOR, operand, new ImmediateOperand(1)));
    }
}
