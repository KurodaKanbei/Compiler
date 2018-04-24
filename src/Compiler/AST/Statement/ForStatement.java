package Compiler.AST.Statement;

import Compiler.AST.Constant.BoolConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.BoolType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

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
}