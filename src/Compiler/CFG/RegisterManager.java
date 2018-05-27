package Compiler.CFG;

import Compiler.CFG.Operand.VirtualRegister;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RegisterManager {
    private static int cnt = 0;
    private int registerInMemory;
    private Set<String> usedRegister;

    public RegisterManager() {
        registerInMemory = 0;
        usedRegister = new HashSet<>();
    }

    public static final List<String> parameterRegister = new ArrayList<String>() {{
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

    public int getRegisterInMemory() {
        return registerInMemory;
    }

    public Set<String> getUsedRegister() {
        return usedRegister;
    }

    public void addRegisterInMemory() {
        ++registerInMemory;
    }
}
