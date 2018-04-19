package Compiler.AST.Constant;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Type.Type;

public abstract class Constant extends Expression {
    public Constant(Type type) {
        super(type, false);
    }
}
