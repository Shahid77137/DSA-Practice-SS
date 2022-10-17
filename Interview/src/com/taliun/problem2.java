package com.taliun;

public class problem2 {
public static void main(String[] args) {
//	int n = 5;
	int arr[] = {};    // Ans  9
	int result = findLargestNumber(arr);
	System.out.println(result);
}
public static int findLargestNumber(int[] arr) {
	
	if(arr.length == 0) {
		throw new IllegalArgumentException("Array is empty");
		
	}
	
	int max = arr[0];
	for(int i=0;i<arr.length;i++) {
		if(arr[i]>max) {
			max = arr[i];
		}
	}
	
	return max;
}
}
