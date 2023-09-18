package com.dsa_questions;

import java.util.Arrays;

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.
//
// 
//
//Example 1:
//
//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
//Example 2:
//
//Input: nums = [3,2,4], target = 6
//Output: [1,2]
//Example 3:
//
//Input: nums = [3,3], target = 6
//Output: [0,1]

public class Two_Sum {
public int[] twoSum(int[] nums, int target) {
        
        int l = 0;
        int r = nums.length-1;
        int sum = 0;
        int[] ans = new int[2];
        int a = 0;
        int b = 0;
        int [] amr = new int[nums.length];

        for(int i=0;i<nums.length;i++){
            amr[i] = nums[i];
        }


        Arrays.sort(nums);

        while(l<r){
           if(nums[l]+nums[r] > target){
               r--;
           }else if(nums[l]+nums[r] < target){
               l++;
           }else{
               a = nums[l];
               b = nums[r];
               break;
           }
        }

        for(int i=0;i<nums.length;i++){
            if(amr[i] == a){
                ans[0] = i;
                a = -1;
            }
            if(amr[i] == b){
                ans[1] = i;
            }
        }
 

      return ans;
    }
}
