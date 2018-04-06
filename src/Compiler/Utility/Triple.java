package Compiler.Utility;

public class Triple<A, B, C> implements Cloneable{
    public A first;
    public B second;
    public C third;
    public A getFirst() {
        return this.first;
    }
    public B getSecond() {
        return this.second;
    }
    public C getThird() {
        return this.third;
    }
    Triple(A first, B second, C third) {
        this.first = first;
        this.second = second;
        this.third = third;
    }
}
