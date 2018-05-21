package Compiler.CFG;

import java.util.List;
import java.util.Map;

public class ProgramIR {
    public enum ConditionOp {
        LE, LEEQ, GR, GREQ, EQ, NEQ
    }

    private static List<String> constStringList;
    private static Map<String, FunctionIR> FunctionMap;
    private static FunctionIR currentFunction;

    public static List<String> getConstStringList() {
        return constStringList;
    }

    public static void setConstStringList(List<String> constStringList) {
        ProgramIR.constStringList = constStringList;
    }

    public static Map<String, FunctionIR> getFunctionMap() {
        return FunctionMap;
    }

    public static void setFunctionMap(Map<String, FunctionIR> functionMap) {
        FunctionMap = functionMap;
    }

    public static FunctionIR getCurrentFunction() {
        return currentFunction;
    }

    public static void setCurrentFunction(FunctionIR currentFunction) {
        ProgramIR.currentFunction = currentFunction;
    }

    public static void addConstString(String string) {
        constStringList.add(string);
    }

    public static void addFunction(String string, FunctionIR functionIR) {
        FunctionMap.put(string, functionIR);
    }


}
