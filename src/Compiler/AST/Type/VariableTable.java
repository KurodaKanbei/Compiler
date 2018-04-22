package Compiler.AST.Type;

import Compiler.AST.Statement.VariableDeclarationStatement;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.HashMap;
import java.util.Map;

public class VariableTable {
    private Map<String, VariableDeclarationStatement> variableMap;

    public VariableTable() {
        variableMap = new HashMap<>();
    }

    public Map<String, VariableDeclarationStatement> getVariableMap() {
        return variableMap;
    }

    public void addVariable(VariableDeclarationStatement variableDeclarationStatement) {
        String variableName = variableDeclarationStatement.getName();
        if (variableMap.containsKey(variableName)) {
            throw new CompilationError("Surprise MotherFucker! There are more than one variable naming" + variableName);
        } else {
            variableMap.put(variableName, variableDeclarationStatement);
        }
    }

    public VariableDeclarationStatement getVariable(String name) {
        return variableMap.get(name);
    }

    public String toString() {
        return "VariableTable";
    }

    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        variableMap.forEach((name, variableDeclarationStatement) -> str.append(variableDeclarationStatement.toString(indents + 1)));
        return str.toString();
    }
}
