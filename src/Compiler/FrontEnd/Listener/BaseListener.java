package Compiler.FrontEnd.Listener;

import Compiler.FrontEnd.Parser.MxstarBaseListener;

import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ParseTreeProperty;

public class BaseListener extends MxstarBaseListener {
    public static int row, column;
    public ParseTreeProperty<Object> returnNode = new ParseTreeProperty<>();

    @Override
    public void enterEveryRule(ParserRuleContext ctx) {
        row = ctx.getStart().getLine();
        column = ctx.getStart().getCharPositionInLine();
    }

    @Override
    public void exitEveryRule(ParserRuleContext ctx) {
        row = ctx.getStart().getLine();
        column = ctx.getStart().getCharPositionInLine();
    }
}
