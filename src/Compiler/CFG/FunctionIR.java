package Compiler.CFG;

import Compiler.AST.Symbol.Symbol;
import Compiler.AST.Type.FunctionType;
import Compiler.AST.Type.IntType;
import Compiler.CFG.Instruction.*;
import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Trans.Translator;
import Compiler.Utility.Utility;

import java.util.*;

public class FunctionIR {
    private FunctionType functionType;
    private List<VirtualRegister> parameterList;
    private List<VirtualRegister> reservedBooleanList;
    private List<VirtualRegister> reservedIntegerList;
    private List<Instruction> checkInstructionList;
    private List<Instruction> returnInstructionList;
    private VirtualRegister backupVirtualRegister;
    private static final int memorySize = 15;

    private List<Block> blockList;
    private LabelInstruction enterBlock, exitBlock;
    private RegisterManager registerManager;
    private Boolean beMemorized;
    private List<String> calleeRegisterList;
    private Map<VirtualRegister, String> registerStringMap;
    private Map<VirtualRegister, Integer> registerIntegerMap;

    public static final List<String> callerSavedRegisterList = new ArrayList<String>() {{
        add("rsi"); add("rdi"); add("r8"); add("r9"); add("r10"); add("r11");
    }};

    public static final List<String> calleeSavedRegisterList = new ArrayList<String>() {{
        add("rbx"); add("r12"); add("r13"); add("r14"); add("r15");
    }};

    private void construct() {
        beMemorized = false;
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
                instructionList.add(new MoveInstruction(parameterList.get(i), t));
            } else {
                registerIntegerMap.put(parameterList.get(i), 4 - i);
            }
        }
        int t = instructionList.size();
        functionType.getBlockStatement().generateInstruction(instructionList);
        if (instructionList.isEmpty()) {
            instructionList.add(new JumpInstruction(exitBlock));
        }
        if (!(instructionList.get(instructionList.size() - 1) instanceof JumpInstruction)) {
            instructionList.add(new JumpInstruction(exitBlock));
        }
        instructionList.add(exitBlock);

        /*beMemorized = canBeResolved(instructionList);
        if (beMemorized) {
            functionType.setIntact(false);
            reservedIntegerList = new ArrayList<>();
            reservedBooleanList = new ArrayList<>();
            backupVirtualRegister = RegisterManager.getTemporaryRegister();
            backupVirtualRegister.setSystemRegister("@" + functionType.getOriginName() + "_backup");
            backupVirtualRegister.setGlobal(true);
            for (int i = 0; i < memorySize; i++) {
                VirtualRegister reserveBoolean = RegisterManager.getTemporaryRegister();
                reserveBoolean.setSystemRegister("@" + functionType.getOriginName() + "_bool_" + i);
                reservedBooleanList.add(reserveBoolean);
                VirtualRegister reserveInteger = RegisterManager.getTemporaryRegister();
                reserveInteger.setSystemRegister("@" + functionType.getOriginName() + "_int_" + i);
                reservedIntegerList.add(reserveInteger);
            }
            constructCheckList();
            for (int i = 0; i < checkInstructionList.size(); i++) {
                instructionList.add(t++, checkInstructionList.get(i));
            }
            constructReturnList();
            t = instructionList.size() - 1;
            for (int i = 0; i < returnInstructionList.size(); i++) {
                instructionList.add(t++, returnInstructionList.get(i));
            }
        }*/

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

    private void constructCheckList() {
        VirtualRegister virtualRegister = parameterList.get(0);
        checkInstructionList = new ArrayList<>();
        List<LabelInstruction> checkLabelInstructionList = new ArrayList<>();
        List<LabelInstruction> successLabelInstructionList = new ArrayList<>();
        List<LabelInstruction> returnLabelInstructionList = new ArrayList<>();
        for (int i = 0; i < memorySize; i++) {
            checkLabelInstructionList.add(new LabelInstruction(functionType.getIRName() + "_check_" + i));
            successLabelInstructionList.add(new LabelInstruction(functionType.getIRName() + "_success_" + i));
            returnLabelInstructionList.add(new LabelInstruction(functionType.getIRName() + "_escape_" + i));
        }
        checkLabelInstructionList.add(new LabelInstruction(functionType.getIRName() + "_check_" + memorySize));
        checkInstructionList.add(new MoveInstruction(new AddressOperand(backupVirtualRegister), virtualRegister));
        checkInstructionList.add(new JumpInstruction(checkLabelInstructionList.get(0)));
        for (int i = 0; i < memorySize; i++) {
            checkInstructionList.add(checkLabelInstructionList.get(i));
            checkInstructionList.add(new CompareInstruction(virtualRegister, new ImmediateOperand(i)));
            checkInstructionList.add(new CJumpInstruction(ProgramIR.ConditionOp.EQ, successLabelInstructionList.get(i)));
            checkInstructionList.add(new JumpInstruction(checkLabelInstructionList.get(i + 1)));
            checkInstructionList.add(successLabelInstructionList.get(i));
            checkInstructionList.add(new CompareInstruction(new AddressOperand(reservedBooleanList.get(i)), new ImmediateOperand(1)));
            checkInstructionList.add(new CJumpInstruction(ProgramIR.ConditionOp.EQ, returnLabelInstructionList.get(i)));
            checkInstructionList.add(new JumpInstruction(checkLabelInstructionList.get(i + 1)));
            checkInstructionList.add(returnLabelInstructionList.get(i));
            checkInstructionList.add(new ReturnInstruction(new AddressOperand(reservedIntegerList.get(i))));
            checkInstructionList.add(new JumpInstruction(exitBlock));
        }
        checkInstructionList.add(checkLabelInstructionList.get(memorySize));
    }

    private void constructReturnList() {
        returnInstructionList = new ArrayList<>();
        List<LabelInstruction> checkLabelInstructionList = new ArrayList<>();
        List<LabelInstruction> successLabelInstructionList = new ArrayList<>();
        for (int i = 0; i < memorySize; i++) {
            checkLabelInstructionList.add(new LabelInstruction(functionType.getIRName() + "_return_check_" + i));
            successLabelInstructionList.add(new LabelInstruction(functionType.getIRName() + "_return_success_" + i));
        }
        checkLabelInstructionList.add(new LabelInstruction(functionType.getIRName() + "_return_check" + memorySize));
        for (int i = 0; i < memorySize; i++) {
            returnInstructionList.add(checkLabelInstructionList.get(i));
            returnInstructionList.add(new CompareInstruction(new AddressOperand(backupVirtualRegister), new ImmediateOperand(i)));
            returnInstructionList.add(new CJumpInstruction(ProgramIR.ConditionOp.EQ, successLabelInstructionList.get(i)));
            returnInstructionList.add(new JumpInstruction(checkLabelInstructionList.get(i + 1)));
            returnInstructionList.add(successLabelInstructionList.get(i));
            returnInstructionList.add(new MoveInstruction(new AddressOperand(reservedBooleanList.get(i)), new ImmediateOperand(1)));
            VirtualRegister t = RegisterManager.getTemporaryRegister();
            t.setSystemRegister("rax");
            returnInstructionList.add(new MoveInstruction(new AddressOperand(reservedIntegerList.get(i)), t));
            returnInstructionList.add(new JumpInstruction(exitBlock));
        }
        returnInstructionList.add(checkLabelInstructionList.get(memorySize));
        returnInstructionList.add(new JumpInstruction(exitBlock));
    }

    private boolean canBeResolved(List<Instruction> instructionList) {
        if (parameterList.size() != 1) return false;
        if (functionType.getParameterList().size() != 1) return false;
        if (functionType.getParameterList().get(0).getType() != IntType.getInstance()) return false;
        if (functionType.getReturnType() != IntType.getInstance()) return false;
        for (Instruction instruction : instructionList) {
            if (instruction.hasGlobalImpact()) return false;
        }
        return true;
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
        str.append(functionType.getIRName() + ":\n");
        blockList.forEach(block -> block.getInstructionList().forEach(Instruction::init));
        init();

        Translator.setOffset(1);

        str.append(Translator.getInstruction("push", "rbp"));
        str.append(Translator.getInstruction("mov", "rbp", "rsp"));

        if (functionType.getIRName().equals("main")) {
            str.append(Translator.getInstruction("call", "__global_init"));
        }

        if (registerManager.getRegisterInMemory() > 0) {
            str.append(Translator.getInstruction("sub", "rsp", String.valueOf(registerManager.getRegisterInMemory() << 3)));
        }
        Translator.addOffset(registerManager.getRegisterInMemory());

        str.append(Translator.getCalleeSaved(calleeRegisterList));
        for (int i = 0; i < blockList.size(); i++) {
            Block block = blockList.get(i);
            str.append(block.toString() + ":\n");
            int n = block.getInstructionList().size();
            if (i + 1 < blockList.size() && ((JumpInstruction) block.getInstructionList().get(n - 1)).getTarget().getBlock() == blockList.get(i + 1)) {
                block.getInstructionList().remove(n - 1);
            }
            block.getInstructionList().forEach(instruction -> str.append(instruction.getAssembly()));
        }
        str.append(Translator.getCalleeRestored(calleeRegisterList));

        if (registerManager.getRegisterInMemory() > 0) {
            str.append(Translator.getInstruction("add", "rsp", String.valueOf(registerManager.getRegisterInMemory() << 3)));
        }

        str.append(Translator.getInstruction("pop", "rbp"));
        str.append(Translator.getInstruction("ret"));
        return str.toString();
    }

    public String getDefinedDataSection() {
        if (!beMemorized) return "";
        StringBuilder str = new StringBuilder();
        str.append(backupVirtualRegister.getDefinedDataSection());
        for (int i = 0; i < memorySize; i++) {
            str.append(reservedBooleanList.get(i).getDefinedDataSection());
        }
        for (int i = 0; i < memorySize; i++) {
            str.append(reservedIntegerList.get(i).getDefinedDataSection());
        }
        return str.toString();
    }

    private void init() {
        calleeRegisterList = new ArrayList<>();
        registerManager.getUsedRegister().forEach(
                s -> {
                    if (calleeSavedRegisterList.contains(s)) {
                        calleeRegisterList.add(s);
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
        str.append(Utility.getIndent(indents) + functionType.getIRName() + " ");
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
