package Compiler.AST.Expression;

import Compiler.AST.Type.ArrayType;
import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.IntType;
import Compiler.AST.Type.Type;
import Compiler.CFG.Instruction.*;
import Compiler.CFG.Operand.ImmediateAddressOperand;
import Compiler.CFG.Operand.ImmediateOperand;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.ProgramIR;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class NewExpression extends Expression {
    private List<Expression> expressionsList;

    private NewExpression(Type type, List<Expression> expressionsList) {
        super(type, false);
        this.expressionsList = expressionsList;
    }

    public static Expression getExpression(Type type, List<Expression> expressionsList) {
        int size = expressionsList.size();
        if (size == 0) {
            if (!(type instanceof ClassType)) {
                throw new CompilationError("Can't new a basic type");
            }
            return new NewExpression(type, expressionsList);
        }
        boolean valid = true;
        for (Expression expression : expressionsList) {
            if (expression == null) {
                valid = false;
            } else {
                if (!valid) {
                    throw new CompilationError("New wrong type array");
                }
            }
        }
        for (Expression expression : expressionsList) {
            if (expression != null && !(expression.getType() instanceof IntType)) {
                throw new CompilationError("New array expression expected to be int type");
            }
        }
        ArrayType arrayType = new ArrayType(type, size);
        return new NewExpression(arrayType, expressionsList);
    }


    @Override
    public String toString() {
        return "New Expression";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + getType().toString() + "\n");
        for (Expression expression : expressionsList) {
            if (expression == null) {
                str.append(Utility.getIndent(indents + 1) + "null\n");
            } else {
                str.append(expression.toString(indents + 1));
            }
        }
        return str.toString();
    }

    /*
        malloc layout:
            init
            jump condition
        condition:
            Cmp pos end
            CJump LE body
            jump exit
        body:
            statement
            increment
            jump condition
        exit:

     */
    private void malloc(VirtualRegister base, Type type, List<Operand> operandList, List<Instruction> instructionList, int cur) {
        if (type instanceof ClassType) {
            instructionList.add(new MallocInstruction(base, new ImmediateOperand(((ClassType) type).getMallocSize())));
            if (((ClassType) type).getConstructFunction() != null) {
                List<Operand> parameterList = new ArrayList<>();
                VirtualRegister t = RegisterManager.getTemporaryRegister();
                t.setSystemRegister(RegisterManager.parameterRegister.get(0));
                instructionList.add(new MoveInstruction(t, base));
                instructionList.add(new FunctionCallInstruction(((ClassType) type).getConstructFunction(), null, parameterList));
            }
            return;
        }
        VirtualRegister mallocSize = RegisterManager.getTemporaryRegister();
        Operand operand = operandList.get(cur++);
        instructionList.add(new MoveInstruction(mallocSize, operand));
        instructionList.add(new UnaryInstruction(UnaryInstruction.UnaryOp.INC, mallocSize));
        instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.SHL, mallocSize, new ImmediateOperand(3)));
        instructionList.add(new MallocInstruction(base, mallocSize));
        if (operand instanceof ImmediateAddressOperand) {
            VirtualRegister t = RegisterManager.getTemporaryRegister();
            instructionList.add(new MoveInstruction(t, operand));
            instructionList.add(new MoveInstruction(new ImmediateAddressOperand(base, new ImmediateOperand(0)), t));
        } else {
            instructionList.add(new MoveInstruction(new ImmediateAddressOperand(base, new ImmediateOperand(0)), operand));
        }
        instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.ADD, base, new ImmediateOperand(8)));
        Type newType = ((ArrayType) type).reduceDimension();
        if (cur < operandList.size() || newType instanceof ClassType) {
            LabelInstruction conditionLabel = new LabelInstruction("malloc_condition");
            LabelInstruction bodyLabel = new LabelInstruction("malloc_body");
            LabelInstruction exitLabel = new LabelInstruction("malloc_exit");
            VirtualRegister pos = RegisterManager.getTemporaryRegister();
            VirtualRegister end = RegisterManager.getTemporaryRegister();
            instructionList.add(new MoveInstruction(pos, base));
            instructionList.add(new MoveInstruction(end, base));
            instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.SUB, mallocSize, new ImmediateOperand(8)));
            instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.ADD, end, mallocSize));
            instructionList.add(new JumpInstruction(conditionLabel));

            instructionList.add(conditionLabel);
            instructionList.add(new CompareInstruction(pos, end));
            instructionList.add(new CJumpInstruction(ProgramIR.ConditionOp.LE, bodyLabel));
            instructionList.add(new JumpInstruction(exitLabel));

            instructionList.add(bodyLabel);
            VirtualRegister t = RegisterManager.getTemporaryRegister();
            instructionList.add(new MoveInstruction(t, new ImmediateAddressOperand(pos, new ImmediateOperand(0))));
            malloc(t, newType, operandList, instructionList, cur);
            instructionList.add(new MoveInstruction(new ImmediateAddressOperand(pos, new ImmediateOperand(0)), t));
            instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.ADD, pos, new ImmediateOperand(8)));
            instructionList.add(new JumpInstruction(conditionLabel));

            instructionList.add(exitLabel);
        }
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        operand = RegisterManager.getTemporaryRegister();
        List<Operand> operandList = new ArrayList<>();
        expressionsList.forEach(expression -> {
            if (expression != null) {
                expression.generateInstruction(instructionList);
                operandList.add(expression.getOperand());
            }
        });
        malloc((VirtualRegister) operand, getType(), operandList, instructionList, 0);
    }
}
