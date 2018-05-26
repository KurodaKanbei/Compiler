package Compiler.CFG.Instruction;

import Compiler.AST.Expression.BinaryExpression.BinaryNotEqualExpression;
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

public class BinaryInstruction extends Instruction {
    public enum BinaryOp {
        ADD, SUB, MUL, DIV, MOD, SHL, SHR, AND, OR, XOR
    }

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
        physicalSource = target.getPhysicalOperand(str);
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
            return str.toString();
        }
        if (physicalSource instanceof PhysicalAddressOperand && physicalTarget instanceof PhysicalAddressOperand) {
            str.append(Translator.getInstruction("mov", "rax", targetName));
            str.append(Translator.getInstruction(operator, "rax", sourceName));
            str.append(Translator.getInstruction("mov", targetName, "rax"));
        } else {
            str.append(Translator.getInstruction(operator, targetName, sourceName));
        }
        return str.toString();
    }
}
