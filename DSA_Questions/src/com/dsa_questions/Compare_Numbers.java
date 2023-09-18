package com.dsa_questions;

public class Compare_Numbers {

}
/*
interface comparison{
  public int comparemax(int a,int b);
  public int comparemax(int a,int b,int c);
  public int comparemax(int a,int b,int c,int d);
  public int comparemax(int a);
  public int comparemin(int a);
  public int comparemin(int a,int b);
  public int comparemin(int a,int b,int c);
  public int comparemin(int a,int b,int c,int d);
    
  
}
*/
class numberclass implements comparison{
   // complete the class which implements the comparison class
   
  public int comparemax(int a){
       return a;
   }
   
   public int comparemax(int a,int b){
       if(a>b){
           return a;
       }else{
           return b;
       }
   }
   
   
   public int comparemax(int a,int b,int c){
       if(a>b && a>c){
           return a;
       }else if(b>a && b>c){
           return b;
       }else{
           return c;
       }
   }
   
   
   public int comparemax(int a,int b,int c,int d){
       if(a>b && a>c && a>d){
           return a;
       }else if(b>a && b>c && b>d){
           return b;
       }else if(c>a && c>b && c>d){
           return c;
       }else{
           return d;
       }
   }
   
   public int comparemin(int a){
       return a;
   }
   
   public int comparemin(int a,int b){
       if(a<b){
           return a;
       }else{
           return b;
       }
   }
   
   
   public int comparemin(int a,int b,int c){
       if(a<b && a<c){
           return a;
       }else if(b<a && b<c){
           return b;
       }else{
           return c;
       }
   }
   
   public int comparemin(int a,int b,int c,int d){
       if(a<b && a<c && a<d){
           return a;
       }else if(b<a && b<c && b<d){
           return b;
       }else if(c<a && c<b && c<d){
           return c;
       }else{
           return d;
       }
   }
   
   
}
