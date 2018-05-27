package Compiler.Trans;

import Compiler.CFG.ProgramIR;

import java.util.HashSet;
import java.util.Set;

public class BuiltinFunction {

    public static String getAssembly() {
        StringBuilder str = new StringBuilder();
        str.append(getDefinedDataSection());
        str.append(getReservedDataSection());
        str.append("SECTION .text\n");
        str.append(__print_int());
        str.append(__println_int());
        str.append(__print());
        str.append(__println());
        str.append(__scanf_int());
        str.append(__scanf_string());
        str.append(__toString());
        str.append(__array_size());
        str.append(__string_length());
        str.append(__string_parseInt());
        str.append(__string_ord());
        str.append(__string_connection());
        for (ProgramIR.ConditionOp conditionOp : ProgramIR.ConditionOp.values()) {
            str.append(__string_compare(conditionOp));
        }
        return str.toString();
    }

    private static int offset;

    private static final Set<String> libCallSet = new HashSet<>() {{
        add("printf"); add("sprintf"); add("malloc"); add("scanf"); add("sscanf");
        add("puts"); add("memcpy"); add("strcmp"); add("strcpy"); add("strlen");
    }};

    private static String getInstruction(String instr) {
        return String.format("%8s\n", instr);
    }

    private static String getInstruction(String instr, String operand) {
        if (instr.equals("push")) {
            ++offset;
        }
        if (instr.equals("pop")) {
            --offset;
        }
        return String.format("%8s %20s\n", instr, operand);
    }

    private static String getInstruction(String instr, String operand1, String operand2) {
        return String.format("%8s %20s %20s\n", instr, operand1, operand2);
    }

    private static String getLibCall(String func) {
        if (!libCallSet.contains(func)) {
            throw new InternalError("you are kidding c lib");
        }
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

    private static String getAssemblyCondition(ProgramIR.ConditionOp conditionOp) {
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

    private static String getDefinedDataSection() {
        StringBuilder str = new StringBuilder();
        str.append("SECTION .data\n");
        str.append("__println_int_format:\n");
        str.append(getInstruction("db", "\"%ld\", 10, 0"));
        str.append("__print_int_format:\n");
        str.append(getInstruction("db", "\"%ld\", 0"));
        str.append("__print_format:\n");
        str.append(getInstruction("db", "\"%s\", 0"));
        str.append("__scanf_int_format:\n");
        str.append(getInstruction("db", "\"%ld\", 0"));
        str.append("__scanf_string_format:\n");
        str.append(getInstruction("db", "\"%s\", 0"));
        str.append("__toString_format:\n");
        str.append(getInstruction("db", "\"%ld\", 0"));
        str.append("__parseInt_format:\n");
        str.append(getInstruction("db", "\"%ld\", 0"));
        return str.toString();
    }

    private static String getReservedDataSection() {
        StringBuilder str = new StringBuilder();
        str.append("SECTION .bss\n");
        str.append("__scanf_int_buf:\n");
        str.append(getInstruction("resq", "1"));
        str.append("__sscanf_int_buf:\n");
        str.append(getInstruction("resq", "1"));
        return str.toString();
    }


    private static String __print() {
        StringBuilder str = new StringBuilder();
        str.append("print:\n");
        offset = 1;
        str.append(getInstruction("mov", "rsi", "rdi"));
        str.append(getInstruction("mov", "rdi", "__print_format"));
        str.append(getLibCall("printf"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __print_int() {
        StringBuilder str = new StringBuilder();
        str.append("print_Int:\n");
        offset = 1;
        str.append(getInstruction("mov", "rsi", "rdi"));
        str.append(getInstruction("mov", "rdi", "__print_int_format"));
        str.append(getLibCall("printf"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __println_int() {
        StringBuilder str = new StringBuilder();
        str.append("println_Int:\n");
        offset = 1;
        str.append(getInstruction("mov", "rsi", "rdi"));
        str.append(getInstruction("mov", "rdi", "__println_int_format"));
        str.append(getLibCall("printf"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __println() {
        StringBuilder str = new StringBuilder();
        str.append("println:\n");
        str.append(getLibCall("puts"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __scanf_int() {
        StringBuilder str = new StringBuilder();
        str.append("getInt:\n");
        offset = 1;
        str.append(getInstruction("mov", "rdi", "__scanf_int_format"));
        str.append(getInstruction("mov", "rsi", "__scanf_int_buf"));
        str.append(getLibCall("scanf"));
        str.append(getInstruction("mov", "rax", "qword [__scanf_int_buf]"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __scanf_string() {
        StringBuilder str = new StringBuilder();
        str.append("getString:\n");
        offset = 1;
        str.append(getInstruction("push", "r15"));
        str.append(getInstruction("mov", "rdi", "300"));
        str.append(getLibCall("malloc"));
        str.append(getInstruction("mov", "r15", "rax"));
        str.append(getInstruction("add", "r15", "8"));
        str.append(getInstruction("mov", "rdi", "__scanf_string_format"));
        str.append(getInstruction("mov", "rsi", "r15"));
        str.append(getLibCall("scanf"));
        str.append(getInstruction("mov", "rdi", "r15"));
        str.append(getLibCall("strlen"));
        str.append(getInstruction("mov", "qword [r15 - 8]", "rax"));
        str.append(getInstruction("mov", "rax", "r15"));
        str.append(getInstruction("pop", "r15"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __toString() {
        StringBuilder str = new StringBuilder();
        str.append("toString:\n");
        offset = 1;
        str.append(getInstruction("push", "r15"));
        str.append(getInstruction("push", "rdi"));
        str.append(getInstruction("mov", "rdi", "20"));
        str.append(getLibCall("malloc"));
        str.append(getInstruction("mov", "r15", "rax"));
        str.append(getInstruction("add", "r15", "8"));
        str.append(getInstruction("mov", "rdi", "r15"));
        str.append(getInstruction("mov", "rsi", "__toString_format"));
        str.append(getInstruction("pop", "rdx"));
        str.append(getLibCall("sprintf"));
        str.append(getInstruction("mov", "rdi", "r15"));
        str.append(getLibCall("strlen"));
        str.append(getInstruction("mov", "qword [r15 - 8]", "rax"));
        str.append(getInstruction("mov", "rax", "r15"));
        str.append(getInstruction("pop", "r15"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __array_size() {
        StringBuilder str = new StringBuilder();
        str.append("__array_size:\n");
        str.append(getInstruction("mov", "rax", "qword [rdi - 8]"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __string_length() {
        StringBuilder str = new StringBuilder();
        str.append("__string_length:\n");
        str.append(getInstruction("mov", "rax", "qword [rdi - 8]"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __string_parseInt() {
        StringBuilder str = new StringBuilder();
        str.append("__string_parseInt:\n");
        offset = 1;
        str.append(getInstruction("mov", "rsi", "__scanf_int_format"));
        str.append(getInstruction("mov", "rdx", "__sscanf_int_buf"));
        str.append(getLibCall("sscanf"));
        str.append(getInstruction("mov", "rax", "qword [__sscanf_int_buf]"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __string_substring() {
        StringBuilder str = new StringBuilder();
        str.append("__string_substring:\n");
        offset = 1;
        str.append(getInstruction("push", "r15"));
        str.append(getInstruction("push", "r14"));
        str.append(getInstruction("mov", "r15", "rdi"));
        str.append(getInstruction("add", "r15", "rsi"));
        str.append(getInstruction("mov", "r14", "rdx"));
        str.append(getInstruction("sub", "r14", "rsi"));
        str.append(getInstruction("add", "r14", "1"));
        str.append(getInstruction("mov", "rdi", "r14"));
        str.append(getInstruction("add", "rdi", "9"));
        str.append(getLibCall("malloc"));
        str.append(getInstruction("add", "rax", "8"));
        str.append(getInstruction("mov", "rdi", "rax"));
        str.append(getInstruction("mov", "rsi", "r15"));
        str.append(getInstruction("mov", "rdx", "r14"));
        str.append(getLibCall("memcpy"));
        str.append(getInstruction("mov", "qword [rax - 8]", "r14"));
        str.append(getInstruction("mov", "r15", "rax"));
        str.append(getInstruction("add", "r15", "r14"));
        str.append(getInstruction("mov", "r15", "0"));
        str.append(getInstruction("pop", "r14"));
        str.append(getInstruction("pop", "r15"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __string_ord() {
        StringBuilder str = new StringBuilder();
        str.append("__string_ord:\n");
        offset = 1;
        str.append(getInstruction("add", "rdi", "rsi"));
        str.append(getInstruction("movsx", "rax", "byte [rdi]"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __string_connection() {
        StringBuilder str = new StringBuilder();
        str.append("__string_connection:\n");
        offset = 1;
        str.append(getInstruction("push", "r15"));
        str.append(getInstruction("push", "r14"));
        str.append(getInstruction("push", "r13"));
        str.append(getInstruction("mov", "r15", "qword [rdi - 8]"));
        str.append(getInstruction("add", "r15", "qword [rsi - 8]"));
        str.append(getInstruction("add", "r15", "9"));
        str.append(getInstruction("mov", "r14", "rdi"));
        str.append(getInstruction("mov", "r13", "rsi"));
        str.append(getInstruction("mov", "rdi", "r15"));
        str.append(getLibCall("malloc"));
        str.append(getInstruction("sub", "r15", "9"));
        str.append(getInstruction("mov", "qword [rax]", "r15"));
        str.append(getInstruction("mov", "r15", "rax"));
        str.append(getInstruction("add", "r15", "8"));
        str.append(getInstruction("mov", "rdi", "r15"));
        str.append(getInstruction("mov", "rsi", "r14"));
        str.append(getLibCall("strcpy"));
        str.append(getInstruction("add", "r15", "qword [r14 - 8]"));
        str.append(getInstruction("mov", "r14", "rax"));
        str.append(getInstruction("mov", "rdi", "r15"));
        str.append(getInstruction("mov", "rsi", "r13"));
        str.append(getLibCall("strcpy"));
        str.append(getInstruction("mov", "rax", "r14"));
        str.append(getInstruction("pop", "r13"));
        str.append(getInstruction("pop", "r14"));
        str.append(getInstruction("pop", "r15"));
        str.append(getInstruction("ret"));
        return str.toString();
    }

    private static String __string_compare(ProgramIR.ConditionOp conditionOp) {
        StringBuilder str = new StringBuilder();
        str.append("__string_" + conditionOp + ":\n");
        offset = 1;
        str.append(getInstruction("cmp", "eax", "0"));
        str.append(getInstruction("mov", "rax", "0"));
        str.append(getInstruction("set" + getAssemblyCondition(conditionOp), "al"));
        str.append(getInstruction("ret"));
        return str.toString();
    }
}
