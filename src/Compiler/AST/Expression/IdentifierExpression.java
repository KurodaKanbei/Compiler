package Compiler.AST.Expression;

import Compiler.AST.Constant.IntConstant;
import Compiler.AST.ProgramAST;
import Compiler.AST.Symbol.Symbol;
import Compiler.AST.Type.FunctionType;
import Compiler.AST.Type.Type;
import Compiler.CFG.Instruction.Instruction;
import Compiler.Utility.Error.CompilationError;
import Compiler.Utility.Utility;

import java.util.List;

public class IdentifierExpression extends Expression {
    private Symbol symbol;

    private IdentifierExpression(Symbol symbol, boolean isLeftValue) {
        super(symbol.getType(), isLeftValue);
        this.symbol = symbol;
    }

    public static Expression getExpression(String identifier) {
        if (!ProgramAST.symbolTable.hasSymbol(identifier)) {
            throw new CompilationError("Can't find the identifier named " + identifier);
        }
        Symbol symbol = ProgramAST.symbolTable.getSymbol(identifier);
        Type type = symbol.getType();
        if (symbol.getClassScope() != null) {
            return MemberExpression.getExpression(IdentifierExpression.getExpression("this"), identifier);
        }
        if (type instanceof FunctionType) {
            return new IdentifierExpression(symbol, false);
        } else {
            return new IdentifierExpression(symbol, true);
        }
    }

    public Symbol getSymbol() {
        return symbol;
    }

    @Override
    public String toString() {
        return "Identifier";
    }

    @Override
    public String toString(int indents) {
        return Utility.getIndent(indents) + toString() + "\n"
                + symbol.toString(indents + 1);
    }

    @Override
    public void generateInstruction(List<Instruction> instructionList) {
        operand = symbol.getOperand();
    }
}

