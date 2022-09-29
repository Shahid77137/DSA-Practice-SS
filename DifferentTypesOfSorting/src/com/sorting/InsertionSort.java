package com.sorting;

import java.util.Arrays;

public class InsertionSort {
    public static void main(String[] args) {
        int[] arr = { 10, 1, 7, 4, 8, 2, 11 };
        int n = arr.length;
        sortByInsertion(arr, n);
        System.out.println(Arrays.toString(arr));
        for (int ele : arr) {
            System.out.print(ele + " ");
        }
    }

    public static int[] sortByInsertion(int[] arr, int n) {
        for (int i = 1; i < n; i++) {
            int temp = arr[i];
            int j = i - 1;
            for (; j >= 0; j--) {
                if (arr[j] > temp)
                    arr[j + 1] = arr[j];
                else
                    break;
            }
            arr[j + 1] = temp;
        }
        return arr;
    }
}

// Time Complexity:
// Worst-case: O(n^2)
// Best-case: O(n) when the array is nearly sorted
// Average-case: O(n^2)
// Space Complexity: O(1) (In-place sorting)
// Bubble Sort:
