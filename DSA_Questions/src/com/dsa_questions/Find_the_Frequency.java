package com.dsa_questions;


/*
 * Given a vector of N positive integers and an integer X. The task is to find the frequency of X in vector.

 

Example 1:

Input:
N = 5
vector = {1, 1, 1, 1, 1}
X = 1
Output: 
5
Explanation: Frequency of 1 is 5.
 * 
 */

public class Find_the_Frequency {

int findFrequency(int A[], int x){
        
        int count = 0;
        
        for(int i=0;i<A.length;i++){
            
            if(A[i] == x){
                count++;
            }
            
        }
       return count; 
    }
	
}
