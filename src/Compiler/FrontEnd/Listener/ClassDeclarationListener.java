package Compiler.FrontEnd.Listener;

import Compiler.AST.ProgramAST;
import Compiler.AST.Type.ClassType;
import Compiler.FrontEnd.Parser.MxstarParser;

public class ClassDeclarationListener extends BaseListener{
    @Override
    public void exitClassDeclaration(MxstarParser.ClassDeclarationContext ctx) {
        String className = ctx.IDENTIFIER().getText();
        ProgramAST.classTable.addClass(className, new ClassType(className));
        returnNode.put(ctx, ProgramAST.classTable.getClassType(className));
    }
}
