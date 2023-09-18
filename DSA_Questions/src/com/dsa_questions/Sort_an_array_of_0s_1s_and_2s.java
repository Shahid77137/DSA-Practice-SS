package com.dsa_questions;
import java.util.Arrays;
/*
 * Given an array of size N containing only 0s, 1s, and 2s; sort the array in ascending order.


Example 1:

Input: 
N = 5
arr[]= {0 2 1 2 0}
Output:
0 0 1 2 2
Explanation:
0s 1s and 2s are segregated 
into ascending order.
Example 2:

Input: 
N = 3
arr[] = {0 1 0}
Output:
0 0 1
Explanation:
0s 1s and 2s are segregated 
into ascending order.
 * 
 */


public class Sort_an_array_of_0s_1s_and_2s {

	 public static void sort012(int a[], int n)
	    {
	       
	    //   Bubble sort
	    
	    // for(int i=n-1;i>=0;i--){
	        
	    //     for(int j=0;j<i;j++){
	            
	    //         if(a[j] > a[j+1]){
	                
	    //             int temp = a[j+1];
	    //             a[j+1] = a[j];
	    //             a[j] = temp;
	                
	    //         }
	            
	    //     }
	        
	    // }
	    
	   

	    //  Selection Sort 
	    
	    
	    // for(int i=0;i<n;i++){
	        
	    //     int minIndex = i;
	        
	    //     for(int j=i+1;j<n;j++){
	            
	    //         if(a[j] < a[minIndex]){
	    //             minIndex = j;
	    //         }
	            
	    //     }
	    //     int temp = a[minIndex];
	    //     a[minIndex] = a[i];
	    //     a[i] = temp;
	    // }
	    
	    
	    // Quick Sort TC = O(n log n)
	    
	    Arrays.sort(a);
	    
	       
	    }
	
}
