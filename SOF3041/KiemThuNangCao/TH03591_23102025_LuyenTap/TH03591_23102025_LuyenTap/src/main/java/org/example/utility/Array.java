package org.example.utility;

public class Array {
    public static long ArrayEven(){
        long total = 0;
        for (int i = 1; i <=1000 ; i++) {
            if (i%2!=0){
                total += i;
            }
        }
        return total;

    }
}
