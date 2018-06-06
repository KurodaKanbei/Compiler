package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.*;
import Compiler.Trans.PhysicalOperand.*;
import Compiler.Trans.Translator;
import Compiler.Utility.Error.InternalError;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;


public class BinaryInstruction extends Instruction {
    public enum BinaryOp {
        ADD, SUB, MUL, DIV, MOD, SHL, SHR, AND, OR, XOR
    }
    private static final Map<String, String> lowRegister = new HashMap<String, String>() {{
        put("rax", "eax");
        put("rcx", "ecx");
        put("rdx", "edx");
        put("rbx", "ebx");
        put("rsp", "esp");
        put("rbp", "ebp");
        put("rsi", "esi");
        put("rdi", "edi");
        put("r8", "r8d");
        put("r9", "r9d");
        put("r10", "r10d");
        put("r11", "r11d");
        put("r12", "r12d");
        put("r13", "r13d");
        put("r14", "r14d");
        put("r15", "r15d");
    }};

    private BinaryOp binaryOp;
    private Operand target, source;

    public BinaryOp getBinaryOp() {
        return binaryOp;
    }

    public Operand getTarget() {
        return target;
    }

    public Operand getSource() {
        return source;
    }

    public void setTarget(Operand target) {
        this.target = target;
        buildSet();
    }

    public void setSource(Operand source) {
        this.source = source;
    }

    public BinaryInstruction(BinaryOp binaryOp, Operand target, Operand source) {
        this.binaryOp = binaryOp;
        this.target = target;
        this.source = source;
        if (target instanceof ImmediateOperand) {
            throw new InternalError("The target operand in binary is not expected to be immediate");
        }
        if (target instanceof ImmediateAddressOperand && source instanceof ImmediateAddressOperand) {
            throw new InternalError("Binary Instruction can't handle two memory address");
        }
        if (target instanceof ImmediateAddressOperand) {
            if (binaryOp == BinaryOp.DIV || binaryOp == BinaryOp.MOD || binaryOp == BinaryOp.SHL || binaryOp == BinaryOp.SHR) {
                throw new InternalError("Target of div, mod, shl, shr can't be memory address");
            }
        }
        buildSet();
    }

    @Override
    public void buildSet() {
        killSet = new HashSet<>();
        useSet = new HashSet<>();
        if (target instanceof VirtualRegister) {
            killSet.add((VirtualRegister) target);
            useSet.add((VirtualRegister) target);
        }
        if (target instanceof ImmediateAddressOperand) {
            useSet.add(((ImmediateAddressOperand) target).getBase());
        }
        if (target instanceof RegisterAddressOperand) {
            useSet.add(((RegisterAddressOperand) target).getBase());
            useSet.add(((RegisterAddressOperand) target).getOffset());
        }
        if (source instanceof VirtualRegister) {
            useSet.add((VirtualRegister) source);
        }
        if (source instanceof ImmediateAddressOperand) {
            useSet.add(((ImmediateAddressOperand) source).getBase());
        }
        if (source instanceof RegisterAddressOperand) {
            useSet.add(((RegisterAddressOperand) source).getBase());
            useSet.add(((RegisterAddressOperand) source).getOffset());
        }
    }

    @Override
    public void replaceVirtualRegister(VirtualRegister older, VirtualRegister newer) {
        target = target.getReplaced(older, newer);
        source = source.getReplaced(older, newer);
        buildSet();
    }

    @Override
    public boolean hasGlobalImpact() {
        if (target instanceof ImmediateAddressOperand || target instanceof MemoryLabel
                || target instanceof VirtualRegister && ((VirtualRegister) target).isGlobal()) {
            return true;
        }
        if (source instanceof ImmediateAddressOperand || source instanceof MemoryLabel
                || source instanceof VirtualRegister && ((VirtualRegister) source).isGlobal()) {
            return true;
        }
        return false;
    }

    @Override
    public void init() {
        target.init();
        source.init();
    }

    @Override
    public String toString() {
        return String.format("%s = %s %s %s", target, target, binaryOp, source);
    }

    @Override
    public String getAssembly() {
        StringBuilder str = new StringBuilder();
        String operator = binaryOp.toString();
        PhysicalOperand physicalTarget, physicalSource;
        physicalTarget = target.getPhysicalOperand(str);
        physicalSource = source.getPhysicalOperand(str);
        String targetName = physicalTarget.toString();
        String sourceName = physicalSource.toString();
        if (operator.equals("SHL")) {
            if (physicalSource instanceof PhysicalImmediateOperand) {
                str.append(Translator.getInstruction("sal", targetName, sourceName));
            } else {
                str.append(Translator.getInstruction("mov", "rcx", sourceName));
                str.append(Translator.getInstruction("sal", targetName, "cl"));
            }
            return str.toString();
        }
        if (operator.equals("SHR")) {
            if (physicalSource instanceof PhysicalImmediateOperand) {
                str.append(Translator.getInstruction("sar", targetName, sourceName));
            } else {
                str.append(Translator.getInstruction("mov", "rcx", sourceName));
                str.append(Translator.getInstruction("sar", targetName, "cl"));
            }
            return str.toString();
        }
        if (operator.equals("MUL")) {
            if (physicalTarget instanceof PhysicalRegister) {
                str.append(Translator.getInstruction("imul", targetName, sourceName));
            } else {
                str.append(Translator.getInstruction("mov", "rax", targetName));
                str.append(Translator.getInstruction("imul", "rax", sourceName));
                str.append(Translator.getInstruction("mov", targetName, "rax"));
            }
            return str.toString();
        }
        if (operator.equals("DIV") || operator.equals("MOD")) {
            if (lowRegister.get(sourceName) != null && lowRegister.get(targetName) != null) {
                str.append(Translator.getInstruction("mov", "eax", lowRegister.get(targetName)));
                str.append(Translator.getInstruction("mov", "ecx", lowRegister.get(sourceName)));
                str.append(Translator.getInstruction("cdq"));
                str.append(Translator.getInstruction("idiv", "ecx"));
                if (operator.equals("DIV")) {
                    str.append(Translator.getInstruction("mov", targetName, "rax"));
                }
                if (operator.equals("MOD")) {
                    str.append(Translator.getInstruction("mov", targetName, "rdx"));
                }
            } else {
                str.append(Translator.getInstruction("mov", "rax", targetName));
                str.append(Translator.getInstruction("mov", "rcx", sourceName));
                str.append(Translator.getInstruction("cdq"));
                str.append(Translator.getInstruction("idiv", "ecx"));
                if (operator.equals("DIV")) {
                    str.append(Translator.getInstruction("mov", targetName, "rax"));
                }
                if (operator.equals("MOD")) {
                    str.append(Translator.getInstruction("mov", targetName, "rdx"));
                }
            }
            return str.toString();
        }
        if (physicalSource instanceof PhysicalAddressOperand && physicalTarget instanceof PhysicalAddressOperand) {
            str.append(Translator.getInstruction("mov", "rax", targetName));
            str.append(Translator.getInstruction(operator.toLowerCase(), "rax", sourceName));
            str.append(Translator.getInstruction("mov", targetName, "rax"));
        } else {
            str.append(Translator.getInstruction(operator.toLowerCase(), targetName, sourceName));
        }
        return str.toString();
    }
}
