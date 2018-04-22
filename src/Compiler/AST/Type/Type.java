package Compiler.AST.Type;

public abstract class Type {

    public abstract boolean compatibleWith(Type rhs);

    public abstract String toString();

    public abstract String toString(int indents);

}
