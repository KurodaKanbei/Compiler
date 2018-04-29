package Compiler.AST.Symbol;

public class GlobalScope implements Scope{
    private static GlobalScope instance = new GlobalScope();

    private GlobalScope(){}

    public static GlobalScope getInstance() {
        return instance;
    }
}
