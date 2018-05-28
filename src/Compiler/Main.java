package Compiler;

import Compiler.AST.ProgramAST;
import Compiler.CFG.ProgramIR;
import Compiler.FrontEnd.Listener.ASTListener;
import Compiler.FrontEnd.Listener.ClassDeclarationListener;
import Compiler.FrontEnd.Listener.DeclarationListener;
import Compiler.FrontEnd.Listener.SyntaxErrorListener;
import Compiler.FrontEnd.Parser.MxstarLexer;
import Compiler.FrontEnd.Parser.MxstarParser;
import Compiler.Opt.Optimize;
import Compiler.Trans.Translator;
import Compiler.Utility.Error.CompilationError;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import java.io.*;

public class Main {
    public static void main(String[] args) throws Exception {
        InputStream cin = new FileInputStream("program.txt");
        processAST(cin);
        buildIR();
        optimize();
        translate();
    }

    private static void processAST(InputStream cin) throws Exception {
        org.antlr.v4.runtime.CharStream charStream = CharStreams.fromStream(cin);
        MxstarLexer mxstarLexer = new MxstarLexer(charStream);
        CommonTokenStream tokenStream = new CommonTokenStream(mxstarLexer);
        MxstarParser mxstarParser = new MxstarParser(tokenStream);
        mxstarParser.removeErrorListeners();
        mxstarParser.addErrorListener(new SyntaxErrorListener());
        try {
            ParseTree parseTree = mxstarParser.program();
            ProgramAST.initialize();
            ParseTreeWalker parseTreeWalker = new ParseTreeWalker();
            parseTreeWalker.walk(new ClassDeclarationListener(), parseTree);
            parseTreeWalker.walk(new DeclarationListener(), parseTree);
            parseTreeWalker.walk(new ASTListener(), parseTree);
        } catch (CompilationError compilationError) {
            System.out.println(compilationError.getMessage());
            System.exit(1);
        }
    }

    private static void buildIR() {
        ProgramIR.init();
        //ProgramIR.print();
    }

    private static void optimize() {
        Optimize.optimize();
        //ProgramIR.print();
    }

    private static void translate() {
        String assembly = Translator.getAssembly();
        System.out.println(assembly);
    }
}
