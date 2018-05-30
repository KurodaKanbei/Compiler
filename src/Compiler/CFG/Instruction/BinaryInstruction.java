package Compiler.CFG.Instruction;

import Compiler.CFG.Operand.AddressOperand;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.Trans.PhysicalOperand.PhysicalAddressOperand;
import Compiler.Trans.PhysicalOperand.PhysicalImmediateOperand;
import Compiler.Trans.PhysicalOperand.PhysicalOperand;
import Compiler.Trans.PhysicalOperand.PhysicalRegister;
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
        build();
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
        if (target instanceof AddressOperand && source instanceof AddressOperand) {
            throw new InternalError("Binary Instruction can't handle two memory address");
        }
        if (target instanceof AddressOperand) {
            if (binaryOp == BinaryOp.DIV || binaryOp == BinaryOp.MOD || binaryOp == BinaryOp.SHL || binaryOp == BinaryOp.SHR) {
                throw new InternalError("Target of div, mod, shl, shr can't be memory address");
            }
        }
        build();
    }

    private void build() {
        killSet = new HashSet<>();
        useSet = new HashSet<>();
        if (target instanceof VirtualRegister) {
            killSet.add((VirtualRegister) target);
            useSet.add((VirtualRegister) target);
        }
        if (target instanceof AddressOperand) {
            useSet.add(((AddressOperand) target).getBase());
        }
        if (source instanceof VirtualRegister) {
            useSet.add((VirtualRegister) source);
        }
        if (source instanceof AddressOperand) {
            useSet.add(((AddressOperand) source).getBase());
        }
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
            if (physicalSource instanceof PhysicalRegister) {
                str.append(Translator.getInstruction("imul", targetName, sourceName));
            } else {
                str.append(Translator.getInstruction("mov", "rax", targetName));
                str.append(Translator.getInstruction("imul", "rax", sourceName));
                str.append(Translator.getInstruction("mov", targetName, "rax"));
            }
            return str.toString();
        }
        if (operator.equals("DIV") || operator.equals("MOD")) {
            if (target instanceof VirtualRegister && source instanceof VirtualRegister) {
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
