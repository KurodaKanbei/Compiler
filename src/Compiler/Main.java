package Compiler;

import Compiler.Utility.Utility;
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

        try {
            new Main().compile(cin, System.out);
        } catch(Exception e) {

        }
    }

    public static void load(InputStream file) throws Exception {

        ANTLRInputStream cin = new ANTLRInputStream(file);


    }

    public static void compile(InputStream cin, OutputStream cout) throws Exception {
    }
}
