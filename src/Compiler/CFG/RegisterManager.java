package Compiler.CFG;

import Compiler.CFG.Operand.VirtualRegister;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RegisterManager {
    private static int cnt = 0;
    private static int registerInMemory = 0;
    private static Set<String> usedRegister;

    public static void init() {
        registerInMemory = 0;
        usedRegister = new HashSet<>();
    }

    public static final List<String> parameterRegister = new ArrayList<>() {{
        add("rdi");
        add("rsi");
        add("rdx");
        add("rcx");
        add("r8");
        add("r9");
    }};

    public static VirtualRegister getTemporaryRegister() {
        return new VirtualRegister("t" + String.valueOf(cnt++));
    }

    public static int getRegisterInMemory() {
        return registerInMemory;
    }

    public static Set<String> getUsedRegister() {
        return usedRegister;
    }
}
