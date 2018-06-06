package Compiler.AST.Expression.PrefixExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.UnaryInstruction;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class PrefixIncrementExpression extends Expression {
    private Expression expression;

    private PrefixIncrementExpression(Expression expression) {
        super(IntType.getInstance(), true);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (!(expression.getType() instanceof IntType)) {
            throw new CompilationError("Prefix increment expression is expected to be int type");
        }
        if (!expression.isLeftValue()) {
            throw new CompilationError("Prefix increment expression is expected to be left-value");
        }
        return new PrefixIncrementExpression(expression);
    }

    public Expression getExpression() {
        return expression;
    }

    @Override
    public boolean equals(Expression rhs) {
        if (!(rhs instanceof PrefixIncrementExpression)) return false;
        return expression.equals(((PrefixIncrementExpression) rhs).getExpression());
    }

    @Override
    public String toString() {
        return "Prefix Increment Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n" + expression.toString(indents + 1);
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        expression.generateInstruction(instructionList);
        operand = expression.getOperand();
        instructionList.add(new UnaryInstruction(UnaryInstruction.UnaryOp.INC, operand));
    }
}
