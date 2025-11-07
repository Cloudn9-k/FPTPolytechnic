package org.example;

public class ArrayUntility {
    //    tính tổng các số nguyên tử từ 1 đến 1000
    public static long sumArray(){
        long total = 0;
        for(long i = 1; i < 1000; i++){
            total += i;
        }
        return total;
    }
}
