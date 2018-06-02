package Compiler.Utility;

public class Utility {

    public static String getIndent(int n) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < n; i++) {
            stringBuilder.append("\t");
        }
        return stringBuilder.toString();
    }

    public static int getLength(String str) {
        int length = 0;
        for (int i = 0; i < str.length(); length++) {
            if (str.charAt(i) != '\\') {
                i = i + 2;
            } else {
                i = i + 1;
            }
        }
        return length;
    }

    public static String getMessage(String string, int row) {
        StringBuilder str = new StringBuilder();
        for (int i = 0; i < string.length(); i++) {
            str.append(string.charAt(i));
            if (string.charAt(i) == '\n') {
                --row;
                if (row == 0) {
                    return str.toString();
                } else {
                    str = new StringBuilder();
                }
            }
        }
        return "";
    }
}
