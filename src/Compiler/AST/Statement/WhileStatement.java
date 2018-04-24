package Compiler.AST.Statement;

import Compiler.AST.Constant.BoolConstant;
import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.BoolType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

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
        if (condition.getType() instanceof BoolType == false) {
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
}
