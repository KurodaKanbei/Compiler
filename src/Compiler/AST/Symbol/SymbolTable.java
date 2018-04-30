package Compiler.AST.Symbol;

import Compiler.AST.Statement.LoopStatement;
import Compiler.AST.Type.ClassType;
import Compiler.AST.Type.FunctionType;
import Compiler.Utility.Error.CompilationError;

import java.util.*;

public class SymbolTable {
    private Stack<Scope> scopeStack;
    private Stack<LoopStatement> loopStatementStack;
    private Map<String, Stack<Symbol>> symbolMap;
    private Stack<Set<String>> symbolSetStack;
    private FunctionType currentFunction;
    private ClassType currentClass;
    private LoopStatement currentLoopStatement;

    public SymbolTable() {
        this.scopeStack = new Stack<>();
        this.loopStatementStack = new Stack<>();
        this.symbolMap = new HashMap<>();
        this.symbolSetStack = new Stack<>();
        this.currentFunction = null;
        this.currentClass = null;
    }

    public void enterScope(Scope scope) {
        scopeStack.push(scope);
        if (scope instanceof FunctionType) {
            currentFunction = (FunctionType) scope;
        }
        if (scope instanceof ClassType) {
            currentClass = (ClassType) scope;
        }
        if (scope instanceof LoopStatement) {
            currentLoopStatement = (LoopStatement) scope;
        }
        symbolSetStack.push(new HashSet<>());

    }

    public void exitScope() {
        Scope scope = scopeStack.pop();
        if (scope instanceof FunctionType) {
            currentFunction = null;
        }
        if (scope instanceof ClassType) {
            currentClass = null;
        }
        if (scope instanceof LoopStatement) {
            loopStatementStack.pop();
            if (loopStatementStack.empty() == false) {
                currentLoopStatement = loopStatementStack.peek();
            } else {
                currentLoopStatement = null;
            }
        }
        symbolSetStack.pop().forEach(name -> symbolMap.get(name).pop());
    }

    public void addSymbol(Symbol symbol) {
        String name = symbol.getName();
        if (symbolSetStack.peek().contains(name)) {
            throw new CompilationError("There are more than one symbol naming " + name);
        }
        if (symbolMap.containsKey(name) == false) {
            symbolMap.put(name, new Stack<>());
        }
        symbolSetStack.peek().add(name);
        symbolMap.get(name).push(symbol);
    }

    public Stack<Scope> getScopeStack() {
        return scopeStack;
    }

    public Stack<LoopStatement> getLoopStatementStack() {
        return loopStatementStack;
    }

    public Map<String, Stack<Symbol>> getSymbolMap() {
        return symbolMap;
    }

    public Stack<Set<String>> getSymbolSetStack() {
        return symbolSetStack;
    }

    public FunctionType getCurrentFunction() {
        return currentFunction;
    }

    public ClassType getCurrentClass() {
        return currentClass;
    }

    public LoopStatement getCurrentLoopStatement() {
        return currentLoopStatement;
    }

    public boolean hasSymbol(String name) {
        return symbolMap.containsKey(name) && symbolMap.get(name).empty() == false;
    }

    public Symbol getSymbol(String name) {
        return symbolMap.get(name).peek();
    }

    public Scope getCurrentScope() {
        if (scopeStack.empty() == true) {
            return null;
        }
        return scopeStack.peek();
    }
}
