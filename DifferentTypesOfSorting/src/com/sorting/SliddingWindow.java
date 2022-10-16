package com.sorting;
// import java.util.*;

public class SliddingWindow {
 public static void main(String[] args){
    int[] arr = {2, 9, 31, -4, 21, 7};
    int k = 3;
    int result = maxSum(arr, k);
    System.out.println(result);
 }   
 public static int maxSum(int[] arr,int k){
    // Brute force approach
    int mSum = Integer.MIN_VALUE;
    int n = arr.length;
    for(int i=0;i<n-k;i++){
        int cSum = 0;
        for(int j=i;j<i+k;j++){
            cSum += arr[j];
        }
        // System.out.println(cSum);
        mSum = Math.max(cSum, mSum);
    }

    // return mSum;

    // Sliding Window technique Approach
    int wSum = 0;
    // int mSum = Integer.MIN_VALUE;
    for(int i=0;i<k;i++){
        wSum = wSum + arr[i];
    }
    for(int i=k; i<arr.length;i++){
        wSum = wSum - arr[i-k] + arr[i];
        mSum = Math.max(mSum, wSum);

    }
    return mSum;
 }
}
