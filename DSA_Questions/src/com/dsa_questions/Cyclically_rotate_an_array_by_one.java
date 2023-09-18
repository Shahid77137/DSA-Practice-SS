package com.dsa_questions;

import java.util.ArrayList;
import java.util.List;

public class Cyclically_rotate_an_array_by_one {

	public void rotate(int arr[], int n)
    {
        List<Integer> list = new ArrayList<>();
        
        list.add(arr[n-1]);
        
        for(int i =0;i<n-1;i++){
            list.add(arr[i]);
        }
        
        for(int j=0;j<n;j++){
            arr[j] = list.get(j);
        }
        
    }
	
}
