package Compiler.Trans;

import Compiler.AST.ProgramAST;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.ProgramIR;

import java.util.List;

public class Translator {
    private static int offset;
    private static FunctionIR currentFunctionIR;

    public static int getOffset() {
        return offset;
    }

    public static void setOffset(int offset) {
        Translator.offset = offset;
    }

    public static void addOffset(int delta) {
        Translator.offset += delta;
    }

    public static void subOffset(int delta) {
        Translator.offset -= delta;
    }

    public static FunctionIR getCurrentFunctionIR() {
        return currentFunctionIR;
    }

    private static void setCurrentFunctionIR(FunctionIR currentFunctionIR) {
        Translator.currentFunctionIR = currentFunctionIR;
    }

    public static String getInstruction(String instr) {
        return String.format("%8s\n", instr);
    }

    public static String getInstruction(String instr, String operand) {
        if (instr.equals("push")) {
            ++offset;
        }
        if (instr.equals("pop")) {
            --offset;
        }
        return String.format("%8s %16s\n", instr, operand);
    }

    public static String getInstruction(String instr, String operand1, String operand2) {
        return String.format("%8s %16s %16s\n", instr, operand1, operand2);
    }

    public static String getLibCall(String func) {
        StringBuilder str = new StringBuilder();
        if (offset % 2 == 1) {
            str.append(Translator.getInstruction("sub", "rsp", "8"));
            str.append(Translator.getInstruction("call", func));
            str.append(Translator.getInstruction("add", "rsp", "8"));
        } else {
            str.append(Translator.getInstruction("call", func));
        }
        return str.toString();
    }

    public static String getAssemblyCondition(ProgramIR.ConditionOp conditionOp) {
        switch (conditionOp) {
            case EQ: return "e";
            case NEQ: return "ne";
            case GR: return "g";
            case LE: return "l";
            case GREQ: return "ge";
            case LEEQ: return "le";
            default: throw new InternalError("what kind of conditionOp do you expected?");
        }
    }

    public static String getCallerSaved(List<String> callerList) {
        StringBuilder str = new StringBuilder();
        for (int i = 0; i < callerList.size(); i++) {
            str.append(getInstruction("push", callerList.get(i)));
        }
        return str.toString();
    }

    public static String getCallerRestored(List<String> callerList) {
        StringBuilder str = new StringBuilder();
        for (int i = callerList.size() - 1; i >= 0; i--) {
            str.append(getInstruction("pop", callerList.get(i)));
        }
        return str.toString();
    }

    public static String getCalleeSaved() {
        StringBuilder str = new StringBuilder();
        for (int i = 0; i < FunctionIR.calleeSavedRegisterList.size(); i++) {
            str.append(getInstruction("push", FunctionIR.calleeSavedRegisterList.get(i)));
        }
        return str.toString();
    }

    public static String getCalleeRestored() {
        StringBuilder str = new StringBuilder();
        for (int i = FunctionIR.calleeSavedRegisterList.size() - 1; i >= 0; i--) {
            str.append(getInstruction("pop", FunctionIR.calleeSavedRegisterList.get(i)));
        }
        return str.toString();
    }

    public static String getAssembly() {
        StringBuilder str = new StringBuilder();
        str.append("global main\n");
        str.append("extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts\n");
        str.append(getDefinedDataSection());
        str.append(getReservedDataSection());
        str.append(getTextSection());
        return str.toString();
    }

    private static String getDefinedDataSection() {
        StringBuilder str = new StringBuilder();
        str.append("SECTION .data\n");
        for (int i = 0; i < ProgramIR.getConstStringList().size(); i++) {
            String s = ProgramIR.getConstStringList().get(i);
            str.append("__const_string").append(String.valueOf(i)).append(":\n").append("\tdb");
            int n = s.length();
            for (int j = 0; j < n; j++) {
                str.append(String.format(" %3d,", (int) s.charAt(j)));
            }
            str.append(String.format(" %3d", 0));
        }
        return str.toString();
    }

    private static String getReservedDataSection() {
        StringBuilder str = new StringBuilder();
        str.append("SECTION .bss\n");
        ProgramAST.globalVariableDeclarationStatementList.forEach(
                variableDeclarationStatement -> {
                    str.append("@" + variableDeclarationStatement.getName() + ":\n");
                    str.append(getInstruction("resq", "1"));
                }

        );
        return str.toString();
    }

    private static String getTextSection() {
        StringBuilder str = new StringBuilder();
        ProgramIR.getFunctionMap().values().forEach(
                functionIR -> {
                    setCurrentFunctionIR(functionIR);
                    str.append(functionIR.getAssembly());
                }
        );
        return str.toString();
    }


}
