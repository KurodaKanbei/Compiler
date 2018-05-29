package Compiler.AST.Symbol;

import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.Type;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Utility.Utility;

public class Symbol {
    private String name;
    private Type type;
    private boolean global;
    private Operand operand;
    private ClassType classScope;

    public Symbol(String name, Type type) {
        this.name = name;
        this.type = type;
        this.global = false;
        this.operand = new VirtualRegister(name);
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

    public ClassType getClassScope() {
        return classScope;
    }

    public Operand getOperand() {
        return operand;
    }

    public void setOperand(Operand operand) {
        this.operand = operand;
    }

    public void setClassScope(ClassType classScope) {
        this.classScope = classScope;
    }

    public String toString(int indents) {
        return Utility.getIndent(indents) + " name = " + name + " type = " + type + "\n";
    }
}
