package Compiler.CFG;

import Compiler.AST.Symbol.Symbol;
import Compiler.AST.Type.FunctionType;
import Compiler.CFG.Instruction.*;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Trans.Translator;
import Compiler.Utility.Utility;

import java.util.*;

public class FunctionIR {
    private FunctionType functionType;
    private List<VirtualRegister> parameterList;
    private List<Block> blockList;
    private LabelInstruction enterBlock, exitBlock;
    private RegisterManager registerManager;

    public static List<String> callerRegisterList, calleeRegisterList;
    private Map<VirtualRegister, String> registerStringMap;
    private Map<VirtualRegister, Integer> registerIntegerMap;

    public static final List<String> callerSavedRegisterList = new ArrayList<String>() {{
        add("rsi"); add("rdi"); add("r8"); add("r9"); add("r10"); add("r11");
    }};

    public static final List<String> calleeSavedRegisterList = new ArrayList<String>() {{
        add("rbx"); add("r12"); add("r13"); add("r14"); add("r15");
    }};

    private void construct() {
        enterBlock = new LabelInstruction("block_enter");
        exitBlock = new LabelInstruction("block_exit");
        functionType.setEnterLabel(enterBlock);
        functionType.setExitLabel(exitBlock);

        List<Instruction> instructionList = new ArrayList<>();

        instructionList.add(enterBlock);
        for (int i = 0; i < parameterList.size(); i++) {
            if (i < 6) {
                VirtualRegister t = RegisterManager.getTemporaryRegister();
                t.setSystemRegister(RegisterManager.parameterRegister.get(i));
                instructionList.add(new MoveInstruction(t, parameterList.get(i)));
            } else {
                registerIntegerMap.put(parameterList.get(i), 4 - i);
            }
        }
        functionType.getBlockStatement().generateInstruction(instructionList);
        if (instructionList.isEmpty()) {
            instructionList.add(new JumpInstruction(exitBlock));
        }
        if (!(instructionList.get(instructionList.size() - 1) instanceof JumpInstruction)) {
            instructionList.add(new JumpInstruction(exitBlock));
        }
        instructionList.add(exitBlock);

        for (int i = 0, j; i < instructionList.size(); i = j) {
            LabelInstruction labelInstruction = (LabelInstruction) instructionList.get(i);
            Block block = new Block(this, labelInstruction, labelInstruction.getName(), blockList.size());
            for (j = i + 1; j < instructionList.size(); j++) {
                if (instructionList.get(j) instanceof LabelInstruction) {
                    break;
                }
                block.addInstruction(instructionList.get(j));
            }
            labelInstruction.setBlock(block);
            blockList.add(block);
        }
    }

    public FunctionIR(FunctionType functionType) {
        this.functionType = functionType;
        this.parameterList = new ArrayList<>();
        this.blockList = new ArrayList<>();
        this.registerManager = new RegisterManager();
        this.registerIntegerMap = new HashMap<>();
        this.registerStringMap = new HashMap<>();
        for (Symbol symbol : functionType.getParameterList()) {
            parameterList.add((VirtualRegister) symbol.getOperand());
        }
        construct();
    }

    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        if (functionType.getName().equals("main")) {
            str.append("_start:\n");
        } else {
            str.append(functionType.getName() + ":\n");
        }
        blockList.forEach(block -> block.getInstructionList().forEach(Instruction::init));
        init();

        Translator.setOffset(1);

        str.append(Translator.getInstruction("push", "rbp"));
        str.append(Translator.getInstruction("mov", "rbp", "rsp"));

        if (functionType.getName().equals("main")) {
            str.append(Translator.getInstruction("call", "@global_init"));
        }

        if (registerManager.getRegisterInMemory() > 0) {
            str.append(Translator.getInstruction("sub", "rsp", String.valueOf(registerManager.getRegisterInMemory() << 3)));
        }
        Translator.addOffset(registerManager.getRegisterInMemory());

        str.append(Translator.getCalleeSaved());

        blockList.forEach(block -> {
            str.append(block.toString() + ":\n");
            block.getInstructionList().forEach(instruction -> str.append(instruction.getAssembly()));
        });

        str.append(Translator.getCalleeRestored());

        if (registerManager.getRegisterInMemory() > 0) {
            str.append(Translator.getInstruction("add", "rsp", String.valueOf(registerManager.getRegisterInMemory() << 3)));
        }

        str.append(Translator.getInstruction("pop", "rbp"));
        str.append(Translator.getInstruction("ret"));
        return str.toString();
    }

    private void init() {
        callerRegisterList = new ArrayList<>();
        calleeRegisterList = new ArrayList<>();
        registerManager.getUsedRegister().forEach(
                s -> {
                    if (callerSavedRegisterList.contains(s)) {
                        callerRegisterList.add(s);
                    }
                    if (calleeSavedRegisterList.contains(s)) {
                        calleeSavedRegisterList.add(s);
                    }
                }
        );
    }

    public FunctionType getFunctionType() {
        return functionType;
    }

    public List<VirtualRegister> getParameterList() {
        return parameterList;
    }

    public List<Block> getBlockList() {
        return blockList;
    }

    public LabelInstruction getEnterBlock() {
        return enterBlock;
    }

    public LabelInstruction getExitBlock() {
        return exitBlock;
    }

    public RegisterManager getRegisterManager() {
        return registerManager;
    }

    public Map<VirtualRegister, String> getRegisterStringMap() {
        return registerStringMap;
    }

    public Map<VirtualRegister, Integer> getRegisterIntegerMap() {
        return registerIntegerMap;
    }

    public void setRegisterStringMap(Map<VirtualRegister, String> registerStringMap) {
        this.registerStringMap = registerStringMap;
    }

    public void setRegisterIntegerMap(Map<VirtualRegister, Integer> registerIntegerMap) {
        this.registerIntegerMap = registerIntegerMap;
    }

    public boolean isLeaf() {
        for (Block block : blockList) {
            for (Instruction instruction : block.getInstructionList()) {
                if (instruction instanceof FunctionCallInstruction) {
                    return false;
                }
            }
        }
        return true;
    }

    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + functionType.getName() + " ");
        parameterList.forEach(virtualRegister -> str.append(virtualRegister.toString() + " "));
        str.append("{\n");
        blockList.forEach(block -> str.append(block.toString(indents + 1)));
        str.append("}\n");
        return str.toString();
    }

    public void initialize(VirtualRegister virtualRegister) {
        if (!registerIntegerMap.containsKey(virtualRegister) && !registerStringMap.containsKey(virtualRegister)) {
            registerManager.addRegisterInMemory();
            registerIntegerMap.put(virtualRegister, registerManager.getRegisterInMemory());
        }
        if (registerStringMap.containsKey(virtualRegister)) {
            registerManager.getUsedRegister().add(registerStringMap.get(virtualRegister));
        }
    }
}
