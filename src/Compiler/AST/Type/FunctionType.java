package Compiler.AST.Type;

import Compiler.AST.Statement.BlockStatement;
import Compiler.AST.Symbol.Scope;
import Compiler.AST.Symbol.Symbol;
import Compiler.CFG.Instruction.LabelInstruction;
import Compiler.Utility.Utility;

import java.awt.*;
import java.util.List;

public class FunctionType extends Type implements Scope {
    private String name;
    private Type returnType;
    private List<Symbol> parameterList;
    private BlockStatement blockStatement;
    private Scope classScope;
    private boolean builtin;
    private LabelInstruction enterLabel, exitLabel;

    public FunctionType(String name, Type returnType, List<Symbol> parameterList) {
        this.name = name;
        this.returnType = returnType;
        this.parameterList = parameterList;
        this.blockStatement = null;
        this.classScope = null;
        this.builtin = false;
    }

    public String getOriginName() {
        return name;
    }

    public String getIRName() {
        if (classScope == null) {
            return name;
        } else {
            return ((ClassType) classScope).getName() + "_" + name;
        }
    }

    public boolean isConstructFunction() {
        return name == null;
    }

    public Type getReturnType() {
        return returnType;
    }

    public List<Symbol> getParameterList() {
        return parameterList;
    }

    public BlockStatement getBlockStatement() {
        return blockStatement;
    }

    public Scope getClassScope() {
        return classScope;
    }

    public boolean isBuiltin() {
        return builtin;
    }

    public void setBuiltin(boolean builtin) {
        this.builtin = builtin;
    }

    public void setClassScope(Scope classScope) {
        this.classScope = classScope;
    }

    public void setParameterList(List<Symbol> parameterList) {
        this.parameterList = parameterList;
    }

    public void setBlockStatement(BlockStatement blockStatement) {
        this.blockStatement = blockStatement;
    }

    public LabelInstruction getEnterLabel() {
        return enterLabel;
    }

    public void setEnterLabel(LabelInstruction enterLabel) {
        this.enterLabel = enterLabel;
    }

    public LabelInstruction getExitLabel() {
        return exitLabel;
    }

    public void setExitLabel(LabelInstruction exitLabel) {
        this.exitLabel = exitLabel;
    }

    @Override
    public boolean compatibleWith(Type rhs) {
        return false;
    }

    @Override
    public String toString() {
        return "Function :" + name + "ReturnType :" + getReturnType();
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents));
        str.append(toString() + "\n");
        parameterList.forEach(parameter -> str.append(parameter.toString(indents + 1)));
        str.append(blockStatement.toString(indents + 1));
        return str.toString();
    }
}
