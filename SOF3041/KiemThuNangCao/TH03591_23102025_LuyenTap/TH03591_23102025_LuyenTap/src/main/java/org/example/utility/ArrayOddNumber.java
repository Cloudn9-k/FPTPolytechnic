package org.example.utility;

public class ArrayOddNumber {
    public static long sumArrayOddNumbers() {
        long sum = 0;
        for (int i = 1; i <= 1000; i++) {
            if (i % 2 == 1) {
                sum += i;
            }
        }
        return sum;
    }
}
