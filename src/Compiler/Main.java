package Compiler;

import java.io.FileInputStream;
import java.io.InputStream;

import java.io.OutputStream;


public class Main {

    public static void main(String[] args) throws Exception{
        InputStream cin = new FileInputStream("test0.txt");

        try {
            new Main().compile(cin, System.out);
        } catch(Exception e) {

        }
    }

    public static void load(InputStream file) throws Exception {

    }

    public static void compile(InputStream cin, OutputStream cout) throws Exception {
    }
}
