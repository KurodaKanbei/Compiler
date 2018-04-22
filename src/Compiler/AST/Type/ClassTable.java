package Compiler.AST.Type;

import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.HashMap;
import java.util.Map;

public class ClassTable{
    private Map<String, ClassType> classMap;

    public ClassTable() {
        classMap = new HashMap<>();
    }

    public void addClass(String className, ClassType classType) {
        if (classMap.containsKey(className)) {
            throw new CompilationError("There are more than one class naming" + className);
        }
        classMap.put(className, classType);
    }

    public ClassType getClassType(String className) {
        if (classMap.containsKey(className) == false) {
            throw new CompilationError("There is no class naming" + className);
        }
        return classMap.get(className);
    }

    public Map<String, ClassType> getClassMap() {
        return classMap;
    }

    public void setClassMap(Map<String, ClassType> classMap) {
        this.classMap = classMap;
    }

    @Override
    public String toString() {
        return "Class Table";
    }

    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString());
        classMap.forEach((name, classType) -> str.append(classType.toString(indents + 1)));
        return str.toString();
    }
}
