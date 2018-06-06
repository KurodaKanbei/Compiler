package Compiler.AST.Expression.PrefixExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.UnaryInstruction;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class PrefixDecrementExpression extends Expression {
    private Expression expression;

    private PrefixDecrementExpression(Expression expression) {
        super(IntType.getInstance(), true);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (!(expression.getType() instanceof IntType)) {
            throw new CompilationError("Prefix decrement expression is expected to be int type");
        }
        if (!expression.isLeftValue()) {
            throw new CompilationError("Prefix decrement expression is expected to be left-value");
        }
        return new PrefixDecrementExpression(expression);
    }

    public Expression getExpression() {
        return expression;
    }

    @Override
    public boolean equals(Expression rhs) {
        if (!(rhs instanceof PrefixDecrementExpression)) return false;
        return expression.equals(((PrefixDecrementExpression) rhs).getExpression());
    }

    @Override
    public String toString() {
        return "Prefix Decrement Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n" + expression.toString(indents + 1);
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        expression.generateInstruction(instructionList);
        operand = expression.getOperand();
        instructionList.add(new UnaryInstruction(UnaryInstruction.UnaryOp.DEC, operand));
    }
}
