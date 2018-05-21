package Compiler.AST.Statement;

import Compiler.AST.Constant.BoolConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.BoolType;
import Compiler.CFG.Instruction.*;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.ProgramIR;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class WhileStatement extends LoopStatement{
    private Expression condition;
    private Statement statement;

    public WhileStatement() {
        this.condition = new BoolConstant(true);
        this.statement = null;
    }

    public Expression getCondition() {
        return condition;
    }

    public Statement getStatement() {
        return statement;
    }

    public void setCondition(Expression condition) {
        if (!(condition.getType() instanceof BoolType)) {
            throw new CompilationError("The condition in while statement is expected to be bool type");
        }
        this.condition = condition;
    }

    public void setStatement(Statement statement) {
        this.statement = statement;
    }

    @Override
    public String toString() {
        return "While Statement";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + condition.toString(indents + 1)
                + statement.toString(indents + 1);
    }

    /*
    while layout
    condition(increment):
        cmp jump body
        jump exit
    body:
        jmp condition
    exit:
     */

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        conditionLabel = new LabelInstruction("loop_condition");
        incrementLabel = conditionLabel;
        bodyLabel = new LabelInstruction("loop_body");
        exitLabel = new LabelInstruction("loop_exit");
        instructionList.add(new JumpInstruction(conditionLabel));

        instructionList.add(conditionLabel);
        condition.generateInstruction(instructionList);
        instructionList.add(new CompareInstruction(condition.getOperand(), new ImmediateOperand(1)));
        instructionList.add(new CJumpInstruction(ProgramIR.ConditionOp.EQ, bodyLabel));
        instructionList.add(new JumpInstruction(exitLabel));

        instructionList.add(bodyLabel);
        if (statement != null) {
            statement.generateInstruction(instructionList);
        }
        instructionList.add(new JumpInstruction(conditionLabel));

        instructionList.add(exitLabel);
    }
}
