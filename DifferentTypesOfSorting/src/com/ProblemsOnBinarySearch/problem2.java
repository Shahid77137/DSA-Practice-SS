package com.ProblemsOnBinarySearch;
// Peak Index in a Mountain Array
public class problem2 {
    public static void main(String[] args){
        int arr[] = {3, 37, 15, 2, 4};
        int result = getPivot(arr);
        System.out.println("Index of that element is "+ result);
    }
    public static int getPivot(int[] arr){
        int start = 0;
        int end = arr.length - 1;
        int mid = start + (end - start)/2;
        while(start < end){
            if(arr[mid] < arr[mid + 1]){
                start = mid + 1;
            }
            else {
                end = mid;
            }
            mid = start + (end - start)/2;
        }

        return start;
    }
}
