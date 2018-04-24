package Compiler.AST.Symbol;

import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.Type;
import Compiler.IR.VirtualRegister;
import Compiler.Utility.Utility;

public class Symbol {
    private String name;
    private Type type;
    private boolean global;
    public VirtualRegister virtualRegister;
    public ClassType classScope;

    public Symbol(String name, Type type) {
        this.name = name;
        this.type = type;
        this.global = false;
        this.virtualRegister = new VirtualRegister(name);
        this.classScope = null;
    }

    public void setGlobal() {
        global = true;
    }

    public String getName() {
        return name;
    }

    public Type getType() {
        return type;
    }

    public boolean isGlobal() {
        return global;
    }

    public String toString(int indents) {
        return Utility.getIndent(indents) + " name = " + name + " type = " + type + "\n";
    }
}
