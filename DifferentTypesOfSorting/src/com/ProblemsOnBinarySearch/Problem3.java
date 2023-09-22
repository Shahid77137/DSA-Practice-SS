package com.ProblemsOnBinarySearch;
// Search an eelement in Rotated Sorted Array
public class Problem3 {
    public static void main(String[] args){
        int arr[] = {7, 8, 1, 3, 5, 7, 9};
        int n = arr.length;
        int k = 3;
        int result = findPosition(arr, n, k);
        System.out.println("Index of that element is "+ result);
    }
    public static int getPivot(int[] arr, int n){
        int s = 0;
        int e = n - 1;
        int mid = s + (e - s)/2;
        while(s < e){
            if(arr[mid] >= arr[0]){
                s = mid + 1;
            }
            else {
                e = mid;
            }
            mid = s + (e - s)/2;
        }

        return s;
    }
    public static int binarySearch(int[] arr,int s, int e, int key){
        int start = s;
        int end = e;
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
    public static int findPosition(int arr[],int n, int k){
        int pivot = getPivot(arr, n);
        if(k >= arr[pivot] && k <= arr[n - 1]){
            return binarySearch(arr, pivot, n - 1, k);
        }
        else {
            return binarySearch(arr, 0, pivot -1, k);
        } 
    }
}
