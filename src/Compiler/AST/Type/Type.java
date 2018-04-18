package Compiler.AST.Type;

public abstract class Type {

    //public abstract boolean equals(Object obj);

    public abstract boolean compatibleWith(Type rhs);

    public abstract String toString(int indents);
}
