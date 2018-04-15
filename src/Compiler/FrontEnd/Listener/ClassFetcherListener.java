package Compiler.FrontEnd.ConcreteSyntaxTree.Listener;

import Compiler.FrontEnd.ConcreteSyntaxTree.Parser.MxstarParser;
//import Compiler.FrontEnd.AbstractSyntaxTree.Type.ClassType.ClassType;
//import Compiler.Environment.Environment;

public class ClassFetcherListener extends BaseListener{
    @Override
    public void exitClassDeclaration(MxstarParser.ClassDeclarationContext ctx) {
        String name = ctx.IDENTIFIER(0).getText();
        //ClassType classType = (ClassType) ClassType.getType(name);
    }
}
