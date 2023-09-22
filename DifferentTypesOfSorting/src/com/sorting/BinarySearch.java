package com.sorting;

public class BinarySearch{
    public static void main(String[] args){
        int arr[] = {3, 7, 15, 23, 45};
        int key = 100;
        int result = checkValue(arr, key);
        System.out.println("Index of that element is "+ result);
    }
    public static int checkValue(int[] arr, int key){
        int start = 0;
        int end = arr.length - 1;
        int mid = start + (end - start)/2;
        while(start <= end){
            if(arr[mid] == key){
                return mid;
            }
            if(key > arr[mid]){
                start = mid + 1;
            }
            else {
                end = mid -1;
            }
            mid = start + (end - start)/2;
        }

        return -1;
    }
}


//  In case of Leaner Search the time complexity is O(n) .
//  In case of Binary Search the time complexity is O(logn) => Optimal Solution. 