package com.sorting;

public class SelectionSort {
    public static void main(String[] args) {
        int[] arr = { 5, 45, 15, 2, 11, 65, 1};
        int n = arr.length;
        sortBySelection(arr, n); 
        
        for (int num : arr) {
            System.out.print(num + " ");
        }
    }

    public static void sortBySelection(int[] arr, int n) {
        for (int i = 0; i < n - 1; i++) {
            int minIndex = i;
            for (int j = i + 1; j < n; j++) {
                if (arr[j] < arr[minIndex]) {
                    minIndex = j;
                }
            }
            swap(arr, minIndex, i);
        }
    }

    public static void swap(int[] arr, int i, int j) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}

// Time Complexity:
// Worst-case: O(n^2)
// Best-case: O(n^2)
// Average-case: O(n^2)
// Space Complexity: O(1) (In-place sorting)

// Swapping Two numbers without using third variable

 class SwapNumbers {
    public static void main(String[] args) {
        int a = 5;
        int b = 10;

        a = a + b; // Sum of a and b is stored in a
        b = a - b; // Subtract b from the sum and store it in b (original 'a' value)
        a = a - b; // Subtract the new 'b' value from the sum and store it in a (original 'b' value)

        System.out.println("After swapping:");
        System.out.println("a = " + a);
        System.out.println("b = " + b);
    }
}

