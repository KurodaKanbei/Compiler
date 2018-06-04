package Compiler.AST.Expression;

import Compiler.AST.Type.ArrayType;
import Compiler.AST.Type.IntType;
import Compiler.AST.Type.Type;
import Compiler.CFG.Instruction.BinaryInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.ImmediateAddressOperand;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class ArrayExpression extends Expression{
    private Expression arrayExpression, subscriptExpression;

    private ArrayExpression(Type type, Expression arrayExpression, Expression subscriptExpression) {
        super(type, arrayExpression.isLeftValue());
        this.arrayExpression = arrayExpression;
        this.subscriptExpression = subscriptExpression;
    }

    public static Expression getExpression(Expression arrayExpression, Expression subscriptExpression) {
        if (!(arrayExpression.getType() instanceof ArrayType)) {
            throw new CompilationError("Array expression need array type");
        }
        if (!(subscriptExpression.getType() instanceof IntType)) {
            throw new CompilationError("Subscript expression need int type");
        }
        ArrayType arrayType = (ArrayType) arrayExpression.getType();
        return new ArrayExpression(arrayType.reduceDimension(), arrayExpression, subscriptExpression);
    }

    @Override
    public String toString() {
        return "Array Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + arrayExpression.toString(indents + 1)
                + subscriptExpression.toString(indents + 1);
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        arrayExpression.generateInstruction(instructionList);
        subscriptExpression.generateInstruction(instructionList);
        VirtualRegister offset = RegisterManager.getTemporaryRegister();
        instructionList.add(new MoveInstruction(offset, subscriptExpression.getOperand()));
        instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.SHL, offset, new ImmediateOperand(3)));
        VirtualRegister base = RegisterManager.getTemporaryRegister();
        instructionList.add(new MoveInstruction(base, arrayExpression.getOperand()));
        instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.ADD, base, offset));
        operand = new ImmediateAddressOperand(base, new ImmediateOperand(0));
    }
}
