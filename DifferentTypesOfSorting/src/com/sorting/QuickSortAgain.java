package com.sorting;

import java.util.Arrays;

public class QuickSortAgain {
    public static void main(String[] args) {
        int[] arr = { 5, 9, 2, 11, 14, 6, 3, 8 };
        int n = arr.length;
        System.out.println("Unsorted array: " + Arrays.toString(arr));
        quicksort(arr, 0, n - 1);
        System.out.println("Sorted array: " + Arrays.toString(arr));
    }

    public static void quicksort(int[] arr, int s, int e) {
        if (s < e) { // Condition should be s < e
            int p = partition(arr, s, e);
            quicksort(arr, s, p - 1);
            quicksort(arr, p + 1, e);
        }
    }

    public static int partition(int[] arr, int s, int e) {
        int pivot = arr[s];
        int count = 0;
        for (int i = s + 1; i <= e; i++) {
            if (arr[i] <= pivot) {
                count++;
            }
        }
        int pivotIndex = s + count;
        int temp = arr[s];
        arr[s] = arr[pivotIndex];
        arr[pivotIndex] = temp;

        int i = s;
        int j = e;
        while (i < pivotIndex && j > pivotIndex) {
            while (arr[i] <= pivot) {
                i++;
            }
            while (arr[j] > pivot) {
                j--;
            }
            if (i < pivotIndex && j > pivotIndex) {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
        return pivotIndex;
    }
}
