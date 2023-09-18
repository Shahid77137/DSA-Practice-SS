package com.dsa_questions;

public class T20_World_Cup_2022 {

}

import java.util.*;

class Pair{
  // complete the class as mentioned in the problem statement

  String name;
  int points;
  
  public Pair(String name,int points){
      this.name = name;
      this.points = points;
  }
  
  public void print(){
      System.out.println(name+"->"+points);
  }
    
}

class worldCup{
  // complete the class as mentioned in the problem statement
  
  int numberOfTeams;
  Pair[] arr;
  
  public worldCup(int numberOfTeams,Pair[] arr){
      this.numberOfTeams = numberOfTeams;
      this.arr = arr;
  }
  
  public void printLeaderBoard(){
      
      sortList();
      
      for(int i=0;i<numberOfTeams;i++){
          arr[i].print();
      }
      
  }
  
  
  public void sortList(){
      
       for(int i=0;i<arr.length;i++){
           for(int j=0;j<arr.length-1;j++){
               if(arr[j].points < arr[j+1].points){
                   Pair p = arr[j];
                   arr[j] = arr[j+1];
                   arr[j+1] = p;
               }
           }
       }
      
      
  }
  
  public String[] qualified(){
      sortList();
      
      String[] strry = new String[2];
      
      for(int i=0;i<2;i++){
          strry[i] = arr[i].name;
      }
      return strry;
      
  }
  
  public String[] disqualified(){
    sortList();
   
   int N = numberOfTeams;
   
   String[] strry = new String[arr.length-2];
   
   for(int i=2;i<arr.length;i++){
       strry[i-2] = arr[i].name;
   }
      return strry;
  }
  
  
}