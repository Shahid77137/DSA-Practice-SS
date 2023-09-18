package com.dsa_questions;

public class Class_for_sorting {

}


class sorter_class{
	  // complete the class as mentioned in the problem statemenent above
	  
	  public String[] sort(String[] arr){
	      
	      for(int i=0;i<arr.length-1;i++){
	          for(int j=i+1;j<arr.length;j++){
	              if(arr[i].compareTo(arr[j]) > 0){
	                  String s = arr[i];
	                  arr[i] = arr[j];
	                  arr[j] = s;
	              }
	          }
	      }
	     return arr; 
	  }
	  
	  
	  public int[] sort(int[] arr){
	      
	      for(int i=0;i<arr.length;i++){
	          for(int j=0;j<arr.length-1;j++){
	              if(arr[j] > arr[j+1]){
	                  int s = arr[j];
	                  arr[j] = arr[j+1];
	                  arr[j+1] = s;
	              }
	          }
	      }
	      return arr;
	  } 
	  
	  public char[] sort(char[] arr){
	      
	      for(int i=0;i<arr.length;i++){
	          for(int j=i+1;j<arr.length;j++){
	              if(arr[i] > arr[j]){
	                  char s = arr[i];
	                  arr[i] = arr[j];
	                  arr[j] = s;
	              }
	          }
	      }
	      return arr;
	      
	  }
	  
	  public boolean[] sort(boolean[] arr){
	      
	      for(int i=0;i<arr.length;i++){
	          for(int j=i+1;j<arr.length;j++){
	              if(arr[i] == false && arr[j] == true){
	                  boolean s = arr[i];
	                  arr[i] = arr[j];
	                  arr[j] = s;
	              }
	          }
	      }
	      return arr;
	      
	  }
	  
	  
	}
