package Compiler.AST.Expression.SuffixExpression;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.IntType;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Instruction.UnaryInstruction;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class SuffixDecrementExpression extends Expression {
    private Expression expression;

    private SuffixDecrementExpression(Expression expression) {
        super(IntType.getInstance(), false);
        this.expression = expression;
    }

    public static Expression getExpression(Expression expression) {
        if (!(expression.getType() instanceof IntType)) {
            throw new CompilationError("Suffix decrement expression is expected to be int type");
        }
        if (!expression.isLeftValue()) {
            throw new CompilationError("Suffix decrement expression is expected to be left-value");
        }
        return new SuffixDecrementExpression(expression);
    }

    @Override
    public String toString() {
        return "Suffix Decrement Expression";
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
        instructionList.add(new UnaryInstruction(UnaryInstruction.UnaryOp.DEC, expression.getOperand()));
    }
}
