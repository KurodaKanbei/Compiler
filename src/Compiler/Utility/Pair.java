package Compiler.Utility;

public class Pair<A, B> implements Cloneable{
    public A first;
    public B second;
    public A getFirst() {
        return this.first;
    }
    public B getSecond() {
        return this.second;
    }
    public Pair(A first, B second) {
        this.first = first;
        this.second = second;
    }
}
