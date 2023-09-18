package com.dsa_questions;
import java.util.Arrays;
/*
 * Given an array arr[] and an integer K where K is smaller than size of array, the task is to find the Kth smallest element in the given array. It is given that all array elements are distinct.

Note :-  l and r denotes the starting and ending index of the array.

Example 1:

Input:
N = 6
arr[] = 7 10 4 3 20 15
K = 3
Output : 7
Explanation :
3rd smallest element in the given 
array is 7.
Example 2:

Input:
N = 5
arr[] = 7 10 4 20 15
K = 4
Output : 15
Explanation :
4th smallest element in the given 
array is 15.
 * 
 */

public class Kth_smallest_element {

	public static int kthSmallest(int[] arr, int l, int r, int k) 
    { 
        
        // Sorting the array
        
        // Bubble sort
        
        // for(int i=arr.length-1;i>=0;i--){
            
        //     for(int j=0;j<i;j++){
                
        //         if(arr[j] > arr[j+1]){
        //             int temp = arr[j];
        //             arr[j] = arr[j+1];
        //             arr[j+1] = temp;
        //         }
                
        //     }
            
        // }
        
        
        // Selection Sort
        
        // for(int i=0;i<arr.length;i++){
            
        //     int minIndex = i;
            
        //     for(int j=i+1;j<arr.length;j++){
                
        //         if(arr[j] < arr[minIndex]){
        //             minIndex = j;
        //         }
                
        //     }
            
        //     int temp = arr[minIndex];
        //     arr[minIndex] = arr[i];
        //     arr[i] = temp;
            
        // }
        
        
        // Quick Sort 
        
        Arrays.sort(arr);
        return arr[k-1];
        
        
    }
	
}
