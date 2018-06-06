package Compiler.Front.Listener;

import Compiler.Utility.Error.CompilationError;
import org.antlr.v4.runtime.BaseErrorListener;
import org.antlr.v4.runtime.RecognitionException;
import org.antlr.v4.runtime.Recognizer;

public class SyntaxErrorListener extends BaseErrorListener {
    @Override
    public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int row, int column, String messsage, RecognitionException e) {
        BaseListener.row = row;
        BaseListener.column = column;
        throw new CompilationError(messsage);
    }
}
