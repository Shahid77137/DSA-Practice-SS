package com.sorting;
import java.util.Arrays;

    // Arrays.sort(arr);	

    // how quick sort works internally

public class QuickSort {
    public static void main(String[] args) {
        int[] arr = { 5, 9, 2, 11, 14, 6, 3, 8 };
        System.out.println("Unsorted array: " + Arrays.toString(arr));
        quicksort(arr, 0, arr.length - 1);
        System.out.println("Sorted array: " + Arrays.toString(arr));
    }

    public static void quicksort(int[] arr, int low, int high) {
        if (low < high) {
            int pivotIndex = partition(arr, low, high);
            quicksort(arr, low, pivotIndex - 1);
            quicksort(arr, pivotIndex + 1, high);
        }
    }

    public static int partition(int[] arr, int low, int high) {
        int pivot = arr[high];
        int i = low - 1;

        for (int j = low; j < high; j++) {
            if (arr[j] <= pivot) {
                i++;
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }

        int temp = arr[i + 1];
        arr[i + 1] = arr[high];
        arr[high] = temp;
        return i + 1;
    }
}

// Time Complexity:
// Worst-case: O(n^2) when poorly chosen pivots
// Best-case: O(n log n)
// Average-case: O(n log n)
// Space Complexity: O(log n) to O(n) depending on the implementation (In-place sorting)
// In summary:


