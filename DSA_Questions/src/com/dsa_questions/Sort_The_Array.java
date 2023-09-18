package com.dsa_questions;
import java.util.Arrays;

/*
 * Given a random set of numbers, Print them in sorted order.

Example 1:

Input:
N = 4
arr[] = {1, 5, 3, 2}
Output: {1, 2, 3, 5}
Explanation: After sorting array will 
be like {1, 2, 3, 5}.
Example 2:

Input:
N = 2
arr[] = {3, 1}
Output: {1, 3}
Explanation: After sorting array will
be like {1, 3}.
 * 
 */

public class Sort_The_Array {

	int[] sortArr(int[] arr, int n) 
    { 
       
    //   Bubble sort method TC = O(n^2)
       
    //   for(int i=n-1;i>=0;i--){
           
    //       for(int j=0;j<i;j++){
               
    //           if(arr[j] > arr[j+1]){
                   
    //               int temp = arr[j];
    //               arr[j] = arr[j+1];
    //               arr[j+1] = temp;
                   
    //           }
               
    //       }
           
    //   }
    
    
    // Selection sort TC = O(n^2)
    
    
        //  for(int i = 0;i<n-1;i++){
             
        //      int minIndex = i;
             
        //      for(int j = i+1;j<n;j++){
                 
        //          if(arr[j] < arr[minIndex]){
        //              minIndex = j;
        //          }
                 
        //      }
        //      int temp = arr[minIndex];
        //      arr[minIndex] = arr[i];
        //      arr[i] = temp;
        //  }
    
    
    // Quick sort (best sorting technique) TC = O(n log n).
    
       Arrays.sort(arr);
    
       return arr;
       
    }
	
}
