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

public class Main {

    public static void main(String[] args) throws Exception{
        InputStream cin = new FileInputStream("test0.txt");
        Utility.arguments = new HashSet<>(Arrays.asList(args));

        try {
            new Main().compile(cin, System.out);
        }
    }

    public static void load(InputStream cin) throws Exception {
        Environment.initialize();

        ANTLRInputStream
    }

    public static void compile(InputStream cin, OutputStream cout) throws Exception {
        Evironment.initialize();
        load(cin);
    }
}
