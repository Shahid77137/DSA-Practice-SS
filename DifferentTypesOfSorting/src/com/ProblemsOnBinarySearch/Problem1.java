package com.ProblemsOnBinarySearch;

// First and Last position of an element in a Sorted Array

public class Problem1 {
    public static void main(String args[]){
        int arr[] = {1, 2, 3, 3, 3, 3, 3, 3, 3, 45};
        int key = 3;
        int firstOccrance = firstIndex(arr, key);
        int lastOccrance = lastIndex(arr, key);

        System.out.println("First occurance Index of that element is "+ firstOccrance);
        System.out.println("Last occurance Index of that element is "+ lastOccrance);
    }
    public static int firstIndex(int[] arr, int key){
        int start = 0;
        int end = arr.length - 1;
        int ans = -1;
        while(start <= end){
            int mid = start + (end - start)/2;
            if(arr[mid] == key){
                ans = mid;
                end = mid - 1;
            }
            else if(key > arr[mid]){
                start = mid + 1;
            }
            else if(key < arr[mid]) {
                end = mid - 1;
            }
            // mid = start + (end - start)/2;
        }

        return ans;
    }
    public static int lastIndex(int[] arr, int key){
        int start = 0;
        int end = arr.length - 1;
        int ans = -1;
        while(start <= end){
            int mid = start + (end - start)/2;
            if(arr[mid] == key){
                ans = mid;
                start = mid + 1;
            }
            else if(key > arr[mid]){
                start = mid + 1;
            }
            else if(key < arr[mid]){
                end = mid - 1;
            }
            // mid = start + (end - start)/2;
        }

        return ans;
    }

    
}

// We can also find total no of occurrence of an element
// Rotal no of Occurrence = (lastOcc - firstOcc) + 1; 



// package com.ProblemsOnBinarySearch;

 class Problem {
    public static void main(String args[]) {
        int arr[] = {1, 2, 3, 3, 3, 3, 3, 3, 3, 45};
        int key = 3;
        int firstOccurrence = firstIndex(arr, key);
        int lastOccurrence = lastIndex(arr, key);

        System.out.println("First occurrence Index of that element is " + firstOccurrence);
        System.out.println("Last occurrence Index of that element is " + lastOccurrence);
    }

    public static int firstIndex(int[] arr, int key) {
        int start = 0;
        int end = arr.length - 1;
        int ans = -1;

        while (start <= end) {
            int mid = start + (end - start) / 2;

            if (arr[mid] == key) {
                ans = mid;
                end = mid - 1;
            } else if (key < arr[mid]) {
                end = mid - 1;
            } else {
                start = mid + 1;
            }
        }

        return ans;
    }

    public static int lastIndex(int[] arr, int key) {
        int start = 0;
        int end = arr.length - 1;
        int ans = -1;

        while (start <= end) {
            int mid = start + (end - start) / 2;

            if (arr[mid] == key) {
                ans = mid;
                start = mid + 1;
            } else if (key < arr[mid]) {
                end = mid - 1;
            } else {
                start = mid + 1;
            }
        }

        return ans;
    }
}

