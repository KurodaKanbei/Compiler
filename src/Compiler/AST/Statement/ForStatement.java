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

public class ForStatement extends LoopStatement{
    private Expression init, condition, increment;
    private Statement statement;

    public ForStatement() {
        this.init = null;
        this.condition = new BoolConstant(true);
        this.increment = null;
        this.statement = null;
    }

    public Expression getInit() {
        return init;
    }

    public Expression getCondition() {
        return condition;
    }

    public Expression getIncrement() {
        return increment;
    }

    public Statement getStatement() {
        return statement;
    }

    public void setInit(Expression init) {
        this.init = init;
    }

    public void setCondition(Expression condition) {
        if (condition.getType() instanceof BoolType == false) {
            throw new CompilationError("The condition in for statement is expected to be bool type");
        }
        this.condition = condition;
    }

    public void setIncrement(Expression increment) {
        this.increment = increment;
    }

    public void setStatement(Statement statement) {
        this.statement = statement;
    }

    @Override
    public String toString() {
        return "For Statement";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        if (init == null) {
            str.append(Utility.getIndent(indents + 1) + "no init\n");
        } else {
            str.append(init.toString(indents + 1));
        }
        if (condition == null) {
            str.append(Utility.getIndent(indents + 1) + "no condition\n");
        } else {
            str.append(condition.toString(indents + 1));
        }
        if (increment == null) {
            str.append(Utility.getIndent(indents + 1) + "no increment\n");
        } else {
            str.append(increment.toString(indents + 1));
        }
        str.append(statement.toString(indents + 1));
        return str.toString();
    }

    /*
        loop layout
            init
        condition:
            if false jump exit
        body:
            something
        increment:
            jump condition
        exit:
     */
    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        LabelInstruction conditionLabel, bodyLabel, incrementLabel, exitLabel;
        conditionLabel = new LabelInstruction("loop_condition");
        bodyLabel = new LabelInstruction("loop_body");
        incrementLabel = new LabelInstruction("loop_increment");
        exitLabel = new LabelInstruction("loop_exit");
        if (init != null) {
            init.generateInstruction(instructionList);
        }
        instructionList.add(new JumpInstruction(conditionLabel));

        instructionList.add(conditionLabel);
        condition.generateInstruction(instructionList);
        instructionList.add(new CompareInstruction(condition.getOperand(), new ImmediateOperand(0)));
        instructionList.add(new CJumpInstruction(ProgramIR.ConditionOp.EQ, exitLabel));
        instructionList.add(new JumpInstruction(bodyLabel));

        instructionList.add(bodyLabel);
        if (statement != null) {
            statement.generateInstruction(instructionList);
        }
        instructionList.add(new JumpInstruction(incrementLabel));

        instructionList.add(incrementLabel);
        if (increment != null) {
            increment.generateInstruction(instructionList);
        }
        instructionList.add(new JumpInstruction(conditionLabel));

        instructionList.add(exitLabel);
    }
}