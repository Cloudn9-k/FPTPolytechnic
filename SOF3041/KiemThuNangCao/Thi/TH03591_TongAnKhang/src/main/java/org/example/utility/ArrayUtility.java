package org.example.utility;

public class ArrayUtility {
    public static long ArraySumEven(){
        long total=0;
        for(int i=1;i<1000;i++){
            if(i%2!=0){
                total+=i;
            }
        }
        return total;
    }
}
