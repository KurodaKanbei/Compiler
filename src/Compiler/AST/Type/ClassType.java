package Compiler.AST.Type;

import Compiler.AST.Statement.VariableDeclarationStatement;
import Compiler.AST.Symbol.Scope;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.Map;

public class ClassType extends Type implements Scope {
    private String name;
    private VariableTable memberVariableTable;
    private FunctionTable memberFunctionTable;
    private FunctionType constructFunction;

    public ClassType(String name) {
        this.name = name;
        this.memberVariableTable = new VariableTable();
        this.memberFunctionTable = new FunctionTable();
        this.constructFunction = null;
    }

    public String getName() {
        return name;
    }

    public VariableTable getMemberVariableTable() {
        return memberVariableTable;
    }

    public FunctionTable getMemberFunctionTable() {
        return memberFunctionTable;
    }

    public FunctionType getConstructFunction() {
        return constructFunction;
    }

    public FunctionType getMemberFunction(String name) {
        return memberFunctionTable.getFunctionType(name);
    }

    public VariableDeclarationStatement getMemberVariable(String name) {
        return memberVariableTable.getVariable(name);
    }

    public void addMemberFunction(FunctionType functionType) {
        memberFunctionTable.addFunction(functionType);
    }

    public void addMemberVariable(VariableDeclarationStatement variableDeclarationStatement) {
        memberVariableTable.addVariable(variableDeclarationStatement);
    }

    public void setConstructFunction(FunctionType constructFunction) {
        if (this.constructFunction != null) {
            throw new CompilationError("The Class " + getName() + "has more than one construction function!");
        }
        this.constructFunction = constructFunction;
    }

    @Override
    public boolean compatibleWith(Type rhs) {
        return NullType.getInstance() == rhs || this == rhs;
    }

    @Override
    public String toString() {
        return "Class " + getName();
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + memberVariableTable.toString(indents + 1)
                + memberFunctionTable.toString(indents + 1);
    }
}
