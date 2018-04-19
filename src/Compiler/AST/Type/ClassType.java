package Compiler.AST.Type;

public class ClassType extends Type {
    @Override
    public boolean compatibleWith(Type rhs) {
        return false;
    }

    @Override
    public String toString(int indents) {
        return null;
    }

    @Override
    public Type getInstance() {
        return null;
    }
}
