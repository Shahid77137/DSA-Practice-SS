package com.dsa_questions;

import java.util.Iterator;

class Solution {
    void segregateEvenOdd(int arr[], int n) {
        
        int l = 0;
        int r = n-1;
        
        while(l<r){
            
            if(arr[l]%2!=0 && arr[r]%2==0){
                
                    int temp = arr[l];
                    arr[l] = arr[r];
                    arr[r] = temp;
                    r--;
                    l++;
                
                
            }else if(arr[l]%2==0 && arr[r]%2!=0){
                l++;
                r--;
            }else if(arr[l]%2==0 && arr[r]%2==0){
                l++;
            }else if(arr[l]%2!=0 && arr[r]%2!=0){
                r--;
            }
            
        }
        
        for(int temp:arr) {
        	System.err.println(temp);
        }
        
    }
}

public class Segregate_Even_and_Odd {

	public static void main(String[] args) {
		
		Solution s = new Solution();
		
		int arr[] = {12,24,45,9,8,90,3};
		int n = 7;
		
		s.segregateEvenOdd(arr,n);
		
	}
	
}
