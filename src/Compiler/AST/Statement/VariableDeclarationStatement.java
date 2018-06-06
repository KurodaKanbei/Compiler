package Compiler.AST.Statement;

import Compiler.AST.Expression.Expression;
import Compiler.AST.Symbol.Symbol;
import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.Type;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.ImmediateAddressOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class VariableDeclarationStatement extends Statement {
    private Type type;
    private String name;
    private Expression expression;
    private ClassType classScope;
    private Symbol symbol;
    private int offset;

    public VariableDeclarationStatement(String name, Type type) {
        this.type = type;
        this.name = name;
        this.expression = null;
        this.classScope = null;
        this.symbol = new Symbol(name, type);
        this.offset = 0;
    }

    public void setClassScope(ClassType classScope) {
        this.classScope = classScope;
    }

    public void setExpression(Expression expression) {
        if (!type.compatibleWith(expression.getType())) {
            System.out.println(type);
            System.out.println(expression.getType());
            throw new CompilationError("The types in variable declaration are not compatible");
        }
        this.expression = expression;
    }

    public Type getType() {
        return type;
    }

    public String getName() {
        return name;
    }

    public Expression getExpression() {
        return expression;
    }

    public ClassType getClassScope() {
        return classScope;
    }

    public Symbol getSymbol() {
        return symbol;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    @Override
    public String toString() {
        return "VariableDeclarationStatement" + " type = " + getType() + " name = " + getName();
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        if (getExpression() != null) {
            str.append(Utility.getIndent(indents) + expression.toString());
        }
        return str.toString();
    }


    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        if (expression != null) {
            expression.generateInstruction(instructionList);
            Operand source, target;
            source = expression.getOperand();
            target = symbol.getOperand();
            if (target instanceof ImmediateAddressOperand && source instanceof ImmediateAddressOperand) {
                VirtualRegister t = RegisterManager.getTemporaryRegister();
                instructionList.add(new MoveInstruction(t, source));
                instructionList.add(new MoveInstruction(target, t));
            } else {
                instructionList.add(new MoveInstruction(target, source));
            }
        }
    }

    public void generateInstructionWithReplaced(List<Instruction> instructionList, Operand source) {
        Operand target = symbol.getOperand();
        if (target instanceof ImmediateAddressOperand && source instanceof ImmediateAddressOperand) {
            VirtualRegister t = RegisterManager.getTemporaryRegister();
            instructionList.add(new MoveInstruction(t, source));
            instructionList.add(new MoveInstruction(target, t));
        } else {
            instructionList.add(new MoveInstruction(target, source));
        }
    }
}
