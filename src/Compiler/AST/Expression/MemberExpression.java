package Compiler.AST.Expression;

import Compiler.AST.ProgramAST;
import Compiler.AST.Statement.VariableDeclarationStatement;
import Compiler.AST.Type.*;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.HashSet;

public class MemberExpression extends Expression{
    private Expression expression;
    private String identifier;

    private static final HashSet<String> stringBuiltinFunctionTable = new HashSet<String>() {{
        add("length");
        add("substring");
        add("parseInt");
        add("ord");
    }};

    private static final HashSet<String> arrayBuiltinFunctionTable = new HashSet<String>() {{
       add("size");
    }};

    private MemberExpression(Type type, Expression expression, String identifier) {
        super(type, !(type instanceof FunctionType));
        this.expression = expression;
        this.identifier = identifier;
    }

    public static Expression getExpression(Expression expression, String identifier) {
        if (expression.getType() instanceof ClassType) {
            ClassType classType = (ClassType) expression.getType();
            if (classType.getMemberFunctionTable().getFunctionMap().containsKey(identifier)) {
                FunctionType functionType = classType.getMemberFunction(identifier);
                return new MemberExpression(functionType, expression, identifier);
            }
            if (classType.getMemberVariableTable().getVariableMap().containsKey(identifier)) {
                VariableDeclarationStatement variableDeclarationStatement = classType.getMemberVariable(identifier);
                return new MemberExpression(variableDeclarationStatement.getType(), expression, identifier);
            }
            throw new CompilationError("The class named" + classType.getName() + "can't find a member named" + identifier);
        }
        if (expression.getType() instanceof StringType) {
            if (stringBuiltinFunctionTable.contains(identifier)) {
                FunctionType functionType = ProgramAST.globalFunctionTable.getFunctionType("__string_" + identifier);
                return new MemberExpression(functionType, expression, identifier);
            }
            throw new CompilationError("String type has no member function named" + identifier);
        }
        if (expression.getType() instanceof ArrayType) {
            if (arrayBuiltinFunctionTable.contains(identifier)) {
                FunctionType functionType = ProgramAST.globalFunctionTable.getFunctionType("__array_" + identifier);
                return new MemberExpression(functionType, expression, identifier);
            }
        }
        throw new CompilationError("The member call is expected to have class or string or array type");
    }

    public Expression getExpression() {
        return expression;
    }

    public String getIdentifier() {
        return identifier;
    }

    @Override
    public String toString() {
        return "Member Call Expression";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + expression.toString(indents + 1)
                + Utility.getIndent(indents + 1) + identifier + "\n";
    }
}
