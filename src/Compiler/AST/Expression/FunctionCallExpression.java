package Compiler.AST.Expression;

import Compiler.AST.Symbol.Symbol;
import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.FunctionType;
import Compiler.AST.Type.Type;
import Compiler.AST.Type.VoidType;
import Compiler.CFG.Instruction.FunctionCallInstruction;
import Compiler.CFG.Instruction.Instruction;
import Compiler.CFG.Instruction.MoveInstruction;
import Compiler.CFG.Operand.Operand;
import Compiler.CFG.Operand.VirtualRegister;
import Compiler.CFG.RegisterManager;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class FunctionCallExpression extends Expression {
    private FunctionType functionType;
    private List<Expression> expressionList;

    private FunctionCallExpression(FunctionType functionType, List<Expression> expressionList) {
        super(functionType.getReturnType(), false);
        this.functionType = functionType;
        this.expressionList = expressionList;
    }

    public static Expression getExpression(Expression expression, List<Expression> expressionList) {
        if (!(expression.getType() instanceof FunctionType)) {
            throw new CompilationError("Function call expression is expected to have function type");
        }
        FunctionType functionType = (FunctionType) expression.getType();
        List<Symbol> parameterList = functionType.getParameterList();
        if (expression instanceof MemberExpression) {
            expressionList.add(0, ((MemberExpression) expression).getExpression());
        } else {
            ClassType classType = (ClassType) functionType.getClassScope();
            if (classType != null) {
                expressionList.add(0, IdentifierExpression.getExpression("this"));
            }
        }
        if (parameterList.size() != expressionList.size()) {
            throw new CompilationError("The number of parameters in function call expression doesn't match");
        }
        for (int i = 0; i < parameterList.size(); i++) {
            Type parameterType = parameterList.get(i).getType();
            Type expressionType = expressionList.get(i).getType();
            if (i == 0 && expression instanceof MemberExpression && parameterType == null) {
                continue;
            }
            if (!parameterType.compatibleWith(expressionType)) {
                throw new CompilationError("The type of the parameters in function call doesn't match");
            }
        }
        return new FunctionCallExpression(functionType, expressionList);
    }

    public FunctionType getFunctionType() {
        return functionType;
    }

    public List<Expression> getExpressionList() {
        return expressionList;
    }

    @Override
    public String toString() {
        return "Function Call Expression";
    }

    @Override
    public String toString(int indents) {
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + toString() + "\n");
        expressionList.forEach(expression -> str.append(expression.toString(indents + 1)));
        return str.toString();
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
       List<Operand> parameterList = new ArrayList<>();
       expressionList.forEach(expression -> {
          expression.generateInstruction(instructionList);
          parameterList.add(expression.getOperand());
       });
        VirtualRegister ret = null;
        if (!(functionType.getReturnType() instanceof VoidType)) {
            ret = RegisterManager.getTemporaryRegister();
            ret.setSystemRegister("rax");
        }
        for (int i = 0; i < 6 && i < parameterList.size(); i++) {
            VirtualRegister t = RegisterManager.getTemporaryRegister();
            t.setSystemRegister(RegisterManager.parameterRegister.get(i));
            instructionList.add(new MoveInstruction(t, parameterList.get(i)));
        }
        for (int i = 0; i < 6 && !parameterList.isEmpty(); i++) {
            parameterList.remove(0);
        }
        instructionList.add(new FunctionCallInstruction(functionType, ret, parameterList));
        if (!(functionType.getReturnType() instanceof VoidType)) {
            operand = RegisterManager.getTemporaryRegister();
            instructionList.add(new MoveInstruction(operand, ret));
        }
    }
}
