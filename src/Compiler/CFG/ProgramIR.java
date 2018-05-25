package Compiler.CFG;

import Compiler.AST.ProgramAST;
import Compiler.AST.Statement.BlockStatement;
import Compiler.AST.Statement.VariableDeclarationStatement;
import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.FunctionType;
import Compiler.AST.Type.VoidType;
import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.VirtualRegister;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProgramIR {
    public enum ConditionOp {
        LE, LEEQ, GR, GREQ, EQ, NEQ
    }

    private static List<String> constStringList;
    private static Map<String, FunctionIR> functionMap;
    private static FunctionIR currentFunction;

    public static List<String> getConstStringList() {
        return constStringList;
    }

    public static void setConstStringList(List<String> constStringList) {
        ProgramIR.constStringList = constStringList;
    }

    public static Map<String, FunctionIR> getFunctionMap() {
        return functionMap;
    }

    public static void setFunctionMap(Map<String, FunctionIR> functionMap) {
        functionMap = functionMap;
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
        functionMap.put(string, functionIR);
    }

    public static void init() {
        functionMap = new HashMap<>();
        constStringList = new ArrayList<>();
        for (VariableDeclarationStatement variableDeclarationStatement : ProgramAST.globalVariableDeclarationStatementList) {
            VirtualRegister t = new VirtualRegister(variableDeclarationStatement.getName());
            t.setSystemRegister("@" + variableDeclarationStatement.getName());
            t.setGlobal(true);
            variableDeclarationStatement.getSymbol().setOperand(new AddressOperand(t, new ImmediateOperand(0)));
        }
        for (FunctionType functionType : ProgramAST.globalFunctionTable.getFunctionMap().values()) {
            if (!functionType.isBuiltin()) {
                addFunction(functionType.getName(), new FunctionIR(functionType));
            }
        }
        for (ClassType classType : ProgramAST.classTable.getClassMap().values()) {
            for (FunctionType functionType : classType.getMemberFunctionTable().getFunctionMap().values()) {
                if (!functionType.isBuiltin()) {
                    addFunction(functionType.getName(), new FunctionIR(functionType));
                }
            }
            if (classType.getConstructFunction() != null) {
                functionMap.put(classType.getName(), new FunctionIR(classType.getConstructFunction()));
            }
        }
        BlockStatement blockStatement = new BlockStatement();
        for (VariableDeclarationStatement variableDeclarationStatement : ProgramAST.globalVariableDeclarationStatementList) {
            blockStatement.addStatement(variableDeclarationStatement);
        }
        FunctionType functionType = new FunctionType("@global_init", VoidType.getInstance(), new ArrayList<>());
        functionType.setBlockStatement(blockStatement);
        functionMap.put("@global_init", new FunctionIR(functionType));
    }

    public static String toString(int indents) {
        StringBuilder str = new StringBuilder();
        for (FunctionIR functionIR : functionMap.values()) {
            ProgramIR.setCurrentFunction(functionIR);
            str.append(functionIR.toString(indents));
        }
        return str.toString();
    }
}
