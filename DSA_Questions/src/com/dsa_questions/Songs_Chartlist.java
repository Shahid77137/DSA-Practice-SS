package com.dsa_questions;

public class Songs_Chartlist {

}
import java.util.*;
class song{
  // complete the class as mentioned in the problem statement above
  int duration;
  String name;
  int popularity;
  
  public song(int duration,String name,int popularity){
      this.duration = duration;
      this.name = name;
      this.popularity = popularity;
  }
  
}

class chartlist{
  // complete the class as mentioned in the problem statement above
  int n;
  song[] arr;
  
  public chartlist(int n,song[] arr){
      this.n = n;
      this.arr = arr;
  }
  
  public void sort(){
      
      for(int i=0;i<arr.length;i++){
          for(int j=0;j<arr.length-1;j++){
              if(arr[j].popularity > arr[j+1].popularity){
                  song s = arr[j+1];
                  arr[j+1] = arr[j];
                  arr[j] = s;
              }
          }
      }
      
  }
  
  public String[] top_five(){
      sort();
      String[] strry = new String[5];
      
      for(int i=0;i<5;i++){
          strry[i] = arr[i].name;
      }
      return strry;
      
  } 
  
  public String leastPopular(){
      sort();
      return arr[arr.length-1].name;

  }
  
  public String mostPopular(){
      sort();
      return arr[0].name;

  }
  
  public String longestSong(){
      
       for(int i=0;i<arr.length;i++){
          for(int j=0;j<arr.length-1;j++){
              if(arr[j].duration > arr[j+1].duration){
                  song s = arr[j+1];
                  arr[j+1] = arr[j];
                  arr[j] = s;
              }
          }
      }
      return arr[arr.length-1].name;
  }
  
  public String shortestSong(){
      
       for(int i=0;i<arr.length;i++){
          for(int j=0;j<arr.length-1;j++){
              if(arr[j].duration > arr[j+1].duration){
                  song s = arr[j+1];
                  arr[j+1] = arr[j];
                  arr[j] = s;
              }
          }
      }
      return arr[0].name;
  }
  
}







