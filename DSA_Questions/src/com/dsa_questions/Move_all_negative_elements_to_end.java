package com.dsa_questions;

import java.util.ArrayList;
import java.util.List;

public class Move_all_negative_elements_to_end {

	int arr[] = {1, -1, 3, 2, -7, -5, 11, 6 };
	int n = 8;
	
	List<Integer> postiveList = new ArrayList<>();
    List<Integer> negativeList = new ArrayList<>();

    for(int i=0;i<n;i++){
        if(arr[i] >= 0){
            postiveList.add(arr[i]);
        }else{
            negativeList.add(arr[i]);
        }
    }

    postiveList.addAll(negativeList);
   
    for(int j=0;j<n;j++){
        arr[i] = postiveList.get(j);
    } 
	
}
