package Compiler;

import Compiler.Utility.Utility;
import jdk.jshell.execution.Util;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import java.io.FileInputStream;
import java.io.InputStream;

import java.io.OutputStream;
import java.util.Arrays;
import java.util.HashSet;

import Compiler.FrontEnd.ConcreteSyntaxTree.Parser.MxstarLexer;
import Compiler.FrontEnd.ConcreteSyntaxTree.Parser.MxstarParser;
import Compiler.FrontEnd.ConcreteSyntaxTree.Parser.MxstarBaseListener;
import Compiler.FrontEnd.ConcreteSyntaxTree.Parser.MxstarListener;


public class Main {

    public static void main(String[] args) throws Exception{
        InputStream cin = new FileInputStream("test0.txt");
        Utility.arguments = new HashSet<>(Arrays.asList(args));

        try {
            new Main().compile(cin, System.out);
        } catch(Exception e) {

        }
    }

    public static void load(InputStream file) throws Exception {
        Environment.initialize();

        ANTLRInputStream cin = new ANTLRInputStream(file);
        MxstarLexer lexer = new MxstarLexer(cin);

        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MxstarParser parser = new MxstarParser(tokens);

        parser.removeErrorListeners();
        parser.addErrorListener(new SyntaxErrorListener());

        ParseTree tree = parser.program();
        ParseTreeWalker walker = new ParseTreeWalker();

        walker.walk(new ClassFetcherListener(), tree);
        walker.walk(new DeclarationFetherListener(), tree);

        Environment.classTable.analysis();
        walker.walk(new TreeBuilderListener(), tree);

    }

    public static void compile(InputStream cin, OutputStream cout) throws Exception {
        Evironment.initialize();
        load(cin);
    }
}
