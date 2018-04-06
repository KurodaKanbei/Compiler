package Compiler.Utility;

//import Compiler.BackEnd.Translator.x86.x86Register;

import java.util.HashSet;
import java.util.Set;

public class Utility {

    public static Set<String> arguments = new HashSet<>();

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

    /*public static int getAligned(int size) {
        int n = x86Register.size();
        return (size + n - 1) / n * n;
    }*/

}
