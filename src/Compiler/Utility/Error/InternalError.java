package Compiler.Utility.Error;

public class InternalError extends Error {
    public InternalError(String errorMessage) {
        super("RuntimeError: " + errorMessage + "!");
    }
}