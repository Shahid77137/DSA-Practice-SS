package com.dsa_questions.two_pointers;

/*
 * Question
 * 
 * You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the            *  ith line are (i, 0) and (i, height[i]).

   Find two lines that together with the x-axis form a container, such that the container contains the most water.
   Return the maximum amount of water a container can store.
 * 
 * 
 * Input : height = [1,8,6,2,5,4,8,3,7]
 * 
 * 
   Output: 49
   
   
   Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water   (blue section) the container can contain is 49.
 * 
 */


public class Container_With_Max_Water {

	    public int maxArea(int[] height) {
	        
	      int l = 0;
	      int r = height.length-1;
	      int area = 0;
	      int max = 0;

	      while(l<r){
	          int lh = height[l];
	          int rh = height[r];
	          area = (r-l) * Math.min(lh,rh);
	          if(max < area){
	              max = area;
	          }
	          if(lh < rh){
	              l++;
	          }else{
	              r--;
	          }

	      }
	     return max;
	    }
	}

