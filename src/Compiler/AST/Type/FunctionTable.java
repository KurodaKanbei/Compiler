package Compiler.AST.Type;

import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.HashMap;
import java.util.Map;

public class FunctionTable {
    private Map<String, FunctionType> functionMap;

    public FunctionTable() {
        functionMap = new HashMap<>();
    }

    public Map<String, FunctionType> getFunctionMap() {
        return functionMap;
    }

    public void addFunction(FunctionType functionType) {
        String functionName = functionType.getName();
        if (functionMap.containsKey(functionName)) {
            throw new CompilationError("There are more than one functions naming" + functionName);
        }
        functionMap.put(functionName, functionType);
    }

    public FunctionType getFunctionType(String functionName) {
        return functionMap.get(functionName);
    }

    @Override
    public String toString() {
        return "Function Table";
    }

    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        functionMap.forEach(
                (name, functionType) -> {
                    if (functionType.getBlockStatement() != null) {
                        System.out.println(name);
                    }
                }
        );
        return str.toString();
    }
}
