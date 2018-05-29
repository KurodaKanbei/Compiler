package Compiler.Trans;

import Compiler.AST.ProgramAST;
import Compiler.CFG.FunctionIR;
import Compiler.CFG.ProgramIR;

import java.util.Arrays;
import java.util.List;

public class Translator {
    private static int offset;

    private static FunctionIR currentFunctionIR;

    private static final String[] builtInFunction = {"print_Int", "println_Int", "print", "println", "getInt", "getString", "toString", "__array_size", "__string_substring",
            "__string_length", "__string_parseInt", "__string_ord", "__string_connection", "__string_LE", "__string_LEEQ", "__string_GR", "__string_GREQ", "__string_EQ", "__string_NEQ"};

    private static final List<String> builtInFunctionName = Arrays.asList(builtInFunction);

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
        return String.format("%8s %20s\n", instr, operand);
    }

    public static String getInstruction(String instr, String operand1, String operand2) {
        if (instr.equals("mov") && operand1.equals(operand2)) {
            return "";
        }
        return String.format("%8s %20s, %20s\n", instr, operand1, operand2);
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

    public static String getCalleeSaved(List<String> calleeList) {
        StringBuilder str = new StringBuilder();
        for (int i = 0; i < calleeList.size(); i++) {
            str.append(getInstruction("push", calleeList.get(i)));
        }
        return str.toString();
    }

    public static String getCalleeRestored(List<String> calleeList) {
        StringBuilder str = new StringBuilder();
        for (int i = calleeList.size() - 1; i >= 0; i--) {
            str.append(getInstruction("pop", calleeList.get(i)));
        }
        return str.toString();
    }

    public static String getAssembly() {
        StringBuilder str = new StringBuilder();
        str.append(getGlobalFunction());
        str.append("extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts\n");
        str.append(getTextSection());
        str.append(getDefinedDataSection());
        str.append(getReservedDataSection());
        str.append(BuiltinFunction.getAssembly());
        return str.toString();
    }

    private static String getGlobalFunction() {
        StringBuilder str = new StringBuilder();
        ProgramIR.getFunctionMap().values().forEach(
                functionIR -> str.append("global " + functionIR.getFunctionType().getName() + "\n")
        );
        builtInFunctionName.forEach(name -> str.append("global " + name + "\n"));
        return str.toString();
    }

    private static String getDefinedDataSection() {
        StringBuilder str = new StringBuilder();
        str.append("SECTION .data\n");
        for (int i = 0; i < ProgramIR.getConstStringList().size(); i++) {
            String s = ProgramIR.getConstStringList().get(i);
            str.append(getInstruction("dq", String.valueOf(s.length())));
            str.append("__const_string_").append(String.valueOf(i)).append(":\n").append("\tdb");
            int n = s.length();
            for (int j = 0; j < n; j++) {
                if (s.charAt(j) == '\\') {
                    ++j;
                    if (s.charAt(j) == 'n') {
                        str.append("  10,");
                    }
                    if (s.charAt(j) == '\"') {
                        str.append("  34,");
                    }
                    if (s.charAt(j) == '\\') {
                        str.append("  92,");
                    }
                } else {
                    str.append(String.format(" %3s,", (int) s.charAt(j)));
                }
            }
            str.append("   0\n");
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
        str.append("SECTION .text\n");
        ProgramIR.getFunctionMap().values().forEach(
                functionIR -> {
                    setCurrentFunctionIR(functionIR);
                    str.append(functionIR.getAssembly());
                }
        );
        return str.toString();
    }


}
