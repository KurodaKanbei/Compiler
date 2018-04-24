package Compiler.AST.Statement;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.BoolType;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

public class IfStatement extends Statement{
   private Expression condition;
   private Statement trueStatement, falseStatement;

    public IfStatement(Expression condition, Statement trueStatement) {
        if (condition.getType() instanceof BoolType == false) {
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
}
