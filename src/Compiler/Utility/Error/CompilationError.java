package Compiler.Utility.Error;

import Compiler.FrontEnd.ConcreteSyntaxTree.Listener.BaseListener;
import org.antlr.v4.codegen.model.BaseListenerFile;

public class CompilationError extends Error {
    public CompilationError(String errorMessage) {
        //super("surprise motherfucker!");
        super("Compilation error:" + BaseListener.row + ": "
                + BaseListener.column + ": " + errorMessage + " !");
    }
}
