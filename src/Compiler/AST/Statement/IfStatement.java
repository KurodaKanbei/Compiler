package Compiler.AST.Statement;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.BoolType;
import Compiler.CFG.Instruction.*;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.ProgramIR;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class IfStatement extends Statement{
    private Expression condition;
    private Statement trueStatement, falseStatement;
    private LabelInstruction trueLabel, falseLabel, exitLabel;


    public IfStatement(Expression condition, Statement trueStatement) {
        if (!(condition.getType() instanceof BoolType)) {
            throw new CompilationError("The condition in if statement is expected to be bool type");
        }
        this.condition = condition;
        this.trueStatement = trueStatement;
        this.falseStatement = null;
    }

    public Expression getCondition() {
        return condition;
    }

    public Statement getTrueStatement() {
        return trueStatement;
    }

    public Statement getFalseStatement() {
        return falseStatement;
    }

    public void setFalseStatement(Statement falseStatement) {
        this.falseStatement = falseStatement;
    }

    @Override
    public String toString() {
        return "If Statement";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        str.append(condition.toString(indents + 1));
        str.append(trueStatement.toString(indents + 1));
        if (falseStatement != null) {
            str.append(falseStatement.toString(indents + 1));
        }
        return str.toString();
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        trueLabel = new LabelInstruction("if_true", this);
        falseLabel = new LabelInstruction("if_false", this);
        exitLabel = new LabelInstruction("if_exit", this);

        condition.generateInstruction(instructionList);
        instructionList.add(new CompareInstruction(condition.getOperand(), new ImmediateOperand(1)));
        instructionList.add(new CJumpInstruction(ProgramIR.ConditionOp.EQ, trueLabel));
        instructionList.add(new JumpInstruction(falseLabel));

        instructionList.add(trueLabel);
        trueStatement.generateInstruction(instructionList);
        instructionList.add(new JumpInstruction(exitLabel));

        instructionList.add(falseLabel);
        if (falseStatement != null) {
            falseStatement.generateInstruction(instructionList);
        }
        instructionList.add(new JumpInstruction(exitLabel));

        instructionList.add(exitLabel);
    }
}
