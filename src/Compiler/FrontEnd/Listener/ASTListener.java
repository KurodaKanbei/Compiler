package Compiler.FrontEnd.Listener;

import Compiler.AST.Constant.BoolConstant;
import Compiler.AST.Constant.IntConstant;
import Compiler.AST.Constant.NullConstant;
import Compiler.AST.Constant.StringConstant;
import Compiler.AST.Expression.*;
import Compiler.AST.Expression.BinaryExpression.*;
import Compiler.AST.Expression.PrefixExpression.PrefixDecrementExpression;
import Compiler.AST.Expression.PrefixExpression.PrefixIncrementExpression;
import Compiler.AST.Expression.SuffixExpression.SuffixDecrementExpression;
import Compiler.AST.Expression.SuffixExpression.SuffixIncrementExpression;
import Compiler.AST.Expression.UnaryExpression.UnaryMinusExpression;
import Compiler.AST.Expression.UnaryExpression.UnaryNotExpression;
import Compiler.AST.Expression.UnaryExpression.UnaryPlusExpression;
import Compiler.AST.Expression.UnaryExpression.UnaryReverseExpression;
import Compiler.AST.ProgramAST;
import Compiler.AST.Statement.*;
import Compiler.AST.Symbol.GlobalScope;
import Compiler.AST.Symbol.Scope;
import Compiler.AST.Symbol.Symbol;
import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.FunctionType;
import Compiler.AST.Type.Type;
import Compiler.FrontEnd.Parser.MxstarParser;

import java.util.ArrayList;
import java.util.List;

public class ASTListener extends BaseListener{
    @Override
    public void enterProgram(MxstarParser.ProgramContext ctx) {
        ProgramAST.symbolTable.enterScope(GlobalScope.getInstance());
        ProgramAST.globalFunctionTable.getFunctionMap().forEach((name, function) -> ProgramAST.symbolTable.addSymbol(new Symbol(name, function)));
    }

    @Override
    public void exitProgram(MxstarParser.ProgramContext ctx) {
        ProgramAST.symbolTable.exitScope();
    }

    @Override
    public void enterVariableDeclarationStatement(MxstarParser.VariableDeclarationStatementContext ctx) {
        super.exitVariableDeclarationStatement(ctx);
    }

    @Override
    public void exitVariableDeclarationStatement(MxstarParser.VariableDeclarationStatementContext ctx) {
        VariableDeclarationStatement variableDeclarationStatement = (VariableDeclarationStatement) returnNode.get(ctx);
        if (ctx.expression() != null) {
            Expression expression = (Expression) returnNode.get(ctx.expression());
            variableDeclarationStatement.setExpression(expression);
        }
        if (variableDeclarationStatement.getClassScope() == null) {
            ProgramAST.symbolTable.addSymbol(variableDeclarationStatement.getSymbol());
        }
    }

    @Override
    public void enterFunctionDeclaration(MxstarParser.FunctionDeclarationContext ctx) {
        FunctionType functionType = (FunctionType) returnNode.get(ctx);
        ProgramAST.symbolTable.enterScope(functionType);
    }

    @Override
    public void exitFunctionDeclaration(MxstarParser.FunctionDeclarationContext ctx) {
        FunctionType functionType = (FunctionType) returnNode.get(ctx);
        BlockStatement blockStatement = (BlockStatement) returnNode.get(ctx.blockStatement());
        functionType.setBlockStatement(blockStatement);
    }

    @Override
    public void enterClassDeclaration(MxstarParser.ClassDeclarationContext ctx) {
        ClassType classType = (ClassType) returnNode.get(ctx);
        ProgramAST.symbolTable.enterScope(classType);
        classType.getMemberFunctionTable().getFunctionMap().forEach((name, function) -> ProgramAST.symbolTable.addSymbol(new Symbol(name, function)));
        classType.getMemberVariableTable().getVariableMap().forEach((name, variable) -> ProgramAST.symbolTable.addSymbol(variable.getSymbol()));
    }

    @Override
    public void exitClassDeclaration(MxstarParser.ClassDeclarationContext ctx) {
        ProgramAST.symbolTable.exitScope();
    }

    @Override
    public void enterStatement(MxstarParser.StatementContext ctx) {
        if (ctx.getParent() instanceof MxstarParser.IfStatementContext) {
            ProgramAST.symbolTable.enterScope(new BlockStatement());
        }
    }

    @Override
    public void exitStatement(MxstarParser.StatementContext ctx) {
        if (ctx.getParent() instanceof MxstarParser.IfStatementContext) {
            ProgramAST.symbolTable.exitScope();
        }
        Statement statement = (Statement) returnNode.get(ctx.getChild(0));
        returnNode.put(ctx, statement);
    }

    @Override
    public void enterBlockStatement(MxstarParser.BlockStatementContext ctx) {
        BlockStatement blockStatement = new BlockStatement();
        Scope currentScope = ProgramAST.symbolTable.getCurrentScope();
        ProgramAST.symbolTable.enterScope(blockStatement);
        if (currentScope instanceof FunctionType) {
            FunctionType functionType = (FunctionType) currentScope;
            functionType.getParameterList().forEach(symbol -> ProgramAST.symbolTable.addSymbol(symbol));
        }
        returnNode.put(ctx, blockStatement);
    }

    @Override
    public void exitBlockStatement(MxstarParser.BlockStatementContext ctx) {
        BlockStatement blockStatement = (BlockStatement) returnNode.get(ctx);
        ctx.statement().forEach(statementContext -> blockStatement.addStatement((Statement) returnNode.get(statementContext)));
        ProgramAST.symbolTable.exitScope();
    }

    @Override
    public void enterExpressionStatement(MxstarParser.ExpressionStatementContext ctx) {
        super.enterExpressionStatement(ctx);
    }

    @Override
    public void exitExpressionStatement(MxstarParser.ExpressionStatementContext ctx) {
        Expression expression = null;
        if (ctx.expression() != null) {
            expression = (Expression) returnNode.get(ctx.expression());
        }
        returnNode.put(ctx, new ExpressionStatement(expression));
    }

    @Override
    public void enterIfStatement(MxstarParser.IfStatementContext ctx) {
        super.enterIfStatement(ctx);
    }

    @Override
    public void exitIfStatement(MxstarParser.IfStatementContext ctx) {
        Expression condition = (Expression) returnNode.get(ctx.expression());
        Statement trueStatement = (Statement) returnNode.get(ctx.statement(0));
        IfStatement ifStatement = new IfStatement(condition, trueStatement);
        if (ctx.statement(1) != null) {
            Statement falseStatement = (Statement) returnNode.get(ctx.statement(1));
            ifStatement.setFalseStatement(falseStatement);
        }
        returnNode.put(ctx, ifStatement);
    }

    @Override
    public void enterWhileStatement(MxstarParser.WhileStatementContext ctx) {
        WhileStatement whileStatement = new WhileStatement();
        ProgramAST.symbolTable.enterScope(whileStatement);
        returnNode.put(ctx, whileStatement);
    }

    @Override
    public void exitWhileStatement(MxstarParser.WhileStatementContext ctx) {
        WhileStatement whileStatement = (WhileStatement) returnNode.get(ctx);
        if (ctx.expression() != null) {
            Expression expression = (Expression) returnNode.get(ctx.expression());
            whileStatement.setCondition(expression);
        }
        Statement statement = (Statement) returnNode.get(ctx.statement());
        whileStatement.setStatement(statement);
        ProgramAST.symbolTable.exitScope();
    }

    @Override
    public void enterForStatement(MxstarParser.ForStatementContext ctx) {
        ForStatement forStatement = new ForStatement();
        ProgramAST.symbolTable.enterScope(forStatement);
        returnNode.put(ctx, forStatement);
    }

    @Override
    public void exitForStatement(MxstarParser.ForStatementContext ctx) {
        ForStatement forStatement = (ForStatement) returnNode.get(ctx);
        if (ctx.expression(0) != null) {
            Expression expression = (Expression) returnNode.get(ctx.expression(0));
            forStatement.setInit(expression);
        }
        if (ctx.expression(1) != null) {
            Expression expression = (Expression) returnNode.get(ctx.expression(1));
            forStatement.setCondition(expression);
        }
        if (ctx.expression(2) != null) {
            Expression expression = (Expression) returnNode.get(ctx.expression(2));
            forStatement.setIncrement(expression);
        }
        Statement statement = (Statement) returnNode.get(ctx.statement());
        forStatement.setStatement(statement);
        ProgramAST.symbolTable.exitScope();
    }

    @Override
    public void enterContinueStatement(MxstarParser.ContinueStatementContext ctx) {
        super.enterContinueStatement(ctx);
    }

    @Override
    public void exitContinueStatement(MxstarParser.ContinueStatementContext ctx) {
        ContinueStatement continueStatement = new ContinueStatement();
        returnNode.put(ctx, continueStatement);
    }

    @Override
    public void enterBreakStatement(MxstarParser.BreakStatementContext ctx) {
        super.enterBreakStatement(ctx);
    }

    @Override
    public void exitBreakStatement(MxstarParser.BreakStatementContext ctx) {
        BreakStatement breakStatement = new BreakStatement();
        returnNode.put(ctx, breakStatement);
    }

    @Override
    public void enterReturnStatement(MxstarParser.ReturnStatementContext ctx) {
        super.enterReturnStatement(ctx);
    }

    @Override
    public void exitReturnStatement(MxstarParser.ReturnStatementContext ctx) {
        Expression expression = null;
        if (ctx.expression() != null) {
            expression = (Expression) returnNode.get(ctx.expression());
        }
        ReturnStatement returnStatement = new ReturnStatement(expression);
        returnNode.put(ctx, returnStatement);
    }

    @Override
    public void enterBoolConstant(MxstarParser.BoolConstantContext ctx) {
        super.enterBoolConstant(ctx);
    }

    @Override
    public void exitBoolConstant(MxstarParser.BoolConstantContext ctx) {
        boolean value = ctx.getText().equals("true");
        BoolConstant boolConstant = new BoolConstant(value);
        returnNode.put(ctx, boolConstant);
    }

    @Override
    public void enterIntConstant(MxstarParser.IntConstantContext ctx) {
        super.enterIntConstant(ctx);
    }

    @Override
    public void exitIntConstant(MxstarParser.IntConstantContext ctx) {
        int value = Integer.valueOf(ctx.getText());
        IntConstant intConstant = new IntConstant(value);
        returnNode.put(ctx, intConstant);
    }

    @Override
    public void enterStringConstant(MxstarParser.StringConstantContext ctx) {
        super.enterStringConstant(ctx);
    }

    @Override
    public void exitStringConstant(MxstarParser.StringConstantContext ctx) {
        int n = ctx.getText().length();
        StringConstant stringConstant = new StringConstant(ctx.getText().substring(1, n - 1));
        returnNode.put(ctx, stringConstant);
    }

    @Override
    public void enterNullConstant(MxstarParser.NullConstantContext ctx) {
        super.enterNullConstant(ctx);
    }

    @Override
    public void exitNullConstant(MxstarParser.NullConstantContext ctx) {
        NullConstant nullConstant = new NullConstant();
        returnNode.put(ctx, nullConstant);
    }

    @Override
    public void enterConstantExpression(MxstarParser.ConstantExpressionContext ctx) {
        super.enterConstantExpression(ctx);
    }

    @Override
    public void exitConstantExpression(MxstarParser.ConstantExpressionContext ctx) {
        Expression expression = (Expression) returnNode.get(ctx.constant());
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterShiftExpression(MxstarParser.ShiftExpressionContext ctx) {
        super.enterShiftExpression(ctx);
    }

    @Override
    public void exitShiftExpression(MxstarParser.ShiftExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        String operator = ctx.operator.getText();
        Expression expression = null;
        if (operator.equals("<<")) {
            expression = BinaryLeftShiftExpression.getExpression(leftExpression, rightExpression);
        }
        if (operator.equals(">>")) {
            expression = BinaryRightShiftExpression.getExpression(leftExpression, rightExpression);
        }
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterAdditiveExpression(MxstarParser.AdditiveExpressionContext ctx) {
        super.enterAdditiveExpression(ctx);
    }

    @Override
    public void exitAdditiveExpression(MxstarParser.AdditiveExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        String operator = ctx.operator.getText();
        Expression expression = null;
        if (operator.equals("+")) {
            expression = BinaryPlusExpression.getExpression(leftExpression, rightExpression);
        }
        if (operator.equals("-")) {
            expression = BinaryMinusExpression.getExpression(leftExpression, rightExpression);
        }
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterBitOrExpression(MxstarParser.BitOrExpressionContext ctx) {
        super.enterBitOrExpression(ctx);
    }

    @Override
    public void exitBitOrExpression(MxstarParser.BitOrExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = BinaryBitOrExpression.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterBitXorExpression(MxstarParser.BitXorExpressionContext ctx) {
        super.enterBitXorExpression(ctx);
    }

    @Override
    public void exitBitXorExpression(MxstarParser.BitXorExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = BinaryBitXorExpression.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterBitAndExpression(MxstarParser.BitAndExpressionContext ctx) {
        super.enterBitAndExpression(ctx);
    }

    @Override
    public void exitBitAndExpression(MxstarParser.BitAndExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = BinaryBitAndExpression.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterSubscriptExpression(MxstarParser.SubscriptExpressionContext ctx) {
        super.enterSubscriptExpression(ctx);
    }

    @Override
    public void exitSubscriptExpression(MxstarParser.SubscriptExpressionContext ctx) {
        Expression arrayExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression subscriptExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = ArrayExpression.getExpression(arrayExpression, subscriptExpression);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterRelationalExpression(MxstarParser.RelationalExpressionContext ctx) {
        super.enterRelationalExpression(ctx);
    }

    @Override
    public void exitRelationalExpression(MxstarParser.RelationalExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        String operator = ctx.operator.getText();
        Expression expression = null;
        if (operator.equals(">")) {
            expression = BinaryGreaterExpression.getExpression(leftExpression, rightExpression);
        }
        if (operator.equals(">=")) {
            expression = BinaryGreaterEqualExpression.getExpression(leftExpression, rightExpression);
        }
        if (operator.equals("<")) {
            expression = BinaryLessExpression.getExpression(leftExpression, rightExpression);
        }
        if (operator.equals("<=")) {
            expression = BInaryLessEqualExpression.getExpression(leftExpression, rightExpression);
        }
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterIdentifierExpression(MxstarParser.IdentifierExpressionContext ctx) {
        super.enterIdentifierExpression(ctx);
    }

    @Override
    public void exitIdentifierExpression(MxstarParser.IdentifierExpressionContext ctx) {
        String identifier = ctx.getText();
        Expression expression = IdentifierExpression.getExpression(identifier);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterAssignmentExpression(MxstarParser.AssignmentExpressionContext ctx) {
        super.enterAssignmentExpression(ctx);
    }

    @Override
    public void exitAssignmentExpression(MxstarParser.AssignmentExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = AssignmentExpression.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterMultiplicativeExpression(MxstarParser.MultiplicativeExpressionContext ctx) {
        super.enterMultiplicativeExpression(ctx);
    }

    @Override
    public void exitMultiplicativeExpression(MxstarParser.MultiplicativeExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        String operator = ctx.operator.getText();
        Expression expression = null;
        if (operator.equals("*")) {
            expression = BinaryPlusExpression.getExpression(leftExpression, rightExpression);
        }
        if (operator.equals("/")) {
            expression = BinaryMinusExpression.getExpression(leftExpression, rightExpression);
        }
        if (operator.equals("%")) {
            expression = BinaryModuloExpression.getExpression(leftExpression, rightExpression);
        }
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterLogicalOrExpression(MxstarParser.LogicalOrExpressionContext ctx) {
        super.enterLogicalOrExpression(ctx);
    }

    @Override
    public void exitLogicalOrExpression(MxstarParser.LogicalOrExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = BinaryLogicalOrExpression.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterNewClassExpression(MxstarParser.NewClassExpressionContext ctx) {
        super.enterNewClassExpression(ctx);
    }

    @Override
    public void exitNewClassExpression(MxstarParser.NewClassExpressionContext ctx) {
        Type classType = (Type) returnNode.get(ctx.type());
        List<Expression> expressionList = new ArrayList<>();
        Expression expression = NewExpression.getExpression(classType, expressionList);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterMemberExpression(MxstarParser.MemberExpressionContext ctx) {
        super.enterMemberExpression(ctx);
    }

    @Override
    public void exitMemberExpression(MxstarParser.MemberExpressionContext ctx) {
        Expression classExpression = (Expression) returnNode.get(ctx.expression());
        String identifier = ctx.IDENTIFIER().getText();
        Expression expression = MemberExpression.getExpression(classExpression, identifier);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterPrefixExpression(MxstarParser.PrefixExpressionContext ctx) {
        super.enterPrefixExpression(ctx);
    }

    @Override
    public void exitPrefixExpression(MxstarParser.PrefixExpressionContext ctx) {
        Expression subExpression = (Expression) returnNode.get(ctx.expression());
        Expression expression = null;
        String operator = ctx.operator.getText();
        if (operator.equals("++")) {
            expression = PrefixIncrementExpression.getExpression(subExpression);
        }
        if (operator.equals("--")) {
            expression = PrefixDecrementExpression.getExpression(subExpression);
        }
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterThisExpression(MxstarParser.ThisExpressionContext ctx) {
        super.enterThisExpression(ctx);
    }

    @Override
    public void exitThisExpression(MxstarParser.ThisExpressionContext ctx) {
        Expression expression = IdentifierExpression.getExpression("this");
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterSuffixExpression(MxstarParser.SuffixExpressionContext ctx) {
        super.enterSuffixExpression(ctx);
    }

    @Override
    public void exitSuffixExpression(MxstarParser.SuffixExpressionContext ctx) {
        Expression subExpression = (Expression) returnNode.get(ctx.expression());
        Expression expression = null;
        String operator = ctx.operator.getText();
        if (operator.equals("++")) {
            expression = SuffixIncrementExpression.getExpression(subExpression);
        }
        if (operator.equals("--")) {
            expression = SuffixDecrementExpression.getExpression(subExpression);
        }
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterEqualityExpression(MxstarParser.EqualityExpressionContext ctx) {
        super.enterEqualityExpression(ctx);
    }

    @Override
    public void exitEqualityExpression(MxstarParser.EqualityExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        String operator = ctx.operator.getText();
        Expression expression = null;
        if (operator.equals("==")) {
            expression = BinaryEqualExpression.getExpression(leftExpression, rightExpression);
        }
        if (operator.equals("!=")) {
            expression = BinaryMinusExpression.getExpression(leftExpression, rightExpression);
        }
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterLogicalAndExpression(MxstarParser.LogicalAndExpressionContext ctx) {
        super.enterLogicalAndExpression(ctx);
    }

    @Override
    public void exitLogicalAndExpression(MxstarParser.LogicalAndExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = BinaryLogicalAndExpression.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterFunctionCallExpression(MxstarParser.FunctionCallExpressionContext ctx) {
        super.enterFunctionCallExpression(ctx);
    }

    @Override
    public void exitFunctionCallExpression(MxstarParser.FunctionCallExpressionContext ctx) {
        Expression functionExpression = (Expression) returnNode.get(ctx.expression(0));
        List<Expression> parameterList = new ArrayList<>();
        for (int i = 1; i < ctx.expression().size(); i++) {
            Expression parameter = (Expression) returnNode.get(ctx.expression(i));
            parameterList.add(parameter);
        }
        Expression expression = FunctionCallExpression.getExpression(functionExpression, parameterList);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterNewArrayExpression(MxstarParser.NewArrayExpressionContext ctx) {
        super.enterNewArrayExpression(ctx);
    }

    @Override
    public void exitNewArrayExpression(MxstarParser.NewArrayExpressionContext ctx) {
        Type type = (Type) returnNode.get(ctx.type());
        List<Expression> expressionList = new ArrayList<>();
        int childrenNum = ctx.children.size();
        for (int i = 0; i < childrenNum; i++) {
            if (ctx.getChild(i).getText().equals("[")) {
                if (ctx.getChild(i + 1).getText().equals("]")) {
                    expressionList.add(null);
                } else {
                    expressionList.add((Expression) returnNode.get(ctx.getChild(i + 1)));
                }
            }
        }
        Expression expression = NewExpression.getExpression(type, expressionList);
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterUnaryExpression(MxstarParser.UnaryExpressionContext ctx) {
        super.enterUnaryExpression(ctx);
    }

    @Override
    public void exitUnaryExpression(MxstarParser.UnaryExpressionContext ctx) {
        Expression subExpression = (Expression) returnNode.get(ctx.expression());
        Expression expression = null;
        String operator = ctx.operator.getText();
        if (operator.equals("+")) {
            expression = UnaryPlusExpression.getExpression(subExpression);
        }
        if (operator.equals("-")) {
            expression = UnaryMinusExpression.getExpression(subExpression);
        }
        if (operator.equals("~")) {
            expression = UnaryReverseExpression.getExpression(subExpression);
        }
        if (operator.equals("!")) {
            expression = UnaryNotExpression.getExpression(subExpression);
        }
        returnNode.put(ctx, expression);
    }

    @Override
    public void enterSubExpression(MxstarParser.SubExpressionContext ctx) {
        super.enterSubExpression(ctx);
    }

    @Override
    public void exitSubExpression(MxstarParser.SubExpressionContext ctx) {
        Expression expression = (Expression) returnNode.get(ctx.expression());
        returnNode.put(ctx, expression);
    }
}
