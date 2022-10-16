package com.sorting;

public class BinarySearch{
    public static void main(String[] args){
        int arr[] = {3, 7, 15, 23, 45};
        int key = 3;
        int result = checkValue(arr, key);
        System.out.println("Index of that element is "+ result);
    }
    public static int checkValue(int[] arr, int key){
        int start = 0;
        int end = arr.length;
        int mid = (start + end)/2;
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
            mid = (start + end)/2;
        }

        return -1;
    }
}