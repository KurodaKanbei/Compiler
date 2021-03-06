package Compiler.Utility.Error;

import Compiler.Front.Listener.BaseListener;

public class CompilationError extends Error {
    public CompilationError(String errorMessage) {
        super("Compilation error: " + "Line " + BaseListener.row + ": "
                + "Column " + BaseListener.column + ": " + errorMessage + "!");
    }
}
