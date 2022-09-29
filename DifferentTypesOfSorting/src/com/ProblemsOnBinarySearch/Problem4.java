package com.ProblemsOnBinarySearch;
//  Find Square root of a number by using Binary Search
public class Problem4 {
    public static void main(String[] args){
        long n = 467;
        long result  = squareRoot(n);
        double finalresult = preciseAns(n, 3, result);
        // Format the double value with the desired number of decimal places
        String formattedValue = String.format("%.3f", finalresult);

        // Parse the formatted string back to a double if needed
        double roundedValue = Double.parseDouble(formattedValue);
        System.out.println(roundedValue);
    }
    public static long squareRoot(long n){
        long s = 0;
        long e = n;
        long mid = s + (e-s)/2;
        long ans = -1;
        while(s <= e){
            long square = mid * mid;
            if(square == n){
                return mid;
            }
            if(square < n){
                ans = mid;
                s = mid + 1;

            }
            else {
                e = mid - 1;
            }
            mid = s + (e - s)/2;
        }
        return ans;
    
    }
    public static double preciseAns(long n, long precise, long temp){
        double factor = 1;
        double ans = temp;
        for(double i=0;i<precise;i++){
            factor = factor/10;
            for(double j=ans; j*j<n;j=j+factor){
                ans = j;
            }
        }
        return ans;

    }
}

// Time complexity is O(logn)
