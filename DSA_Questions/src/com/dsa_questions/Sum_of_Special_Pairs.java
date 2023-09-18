package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;


/*
 * Question 
 * You are given an array A of N integers
 * write a program to find the sum of the absolute differnce between all such pair 
 * where i<j and (j-i) is prime
 * 
 */


public class Sum_of_Special_Pairs {

	static class FastReader {
		
        BufferedReader br;
        StringTokenizer st;
 
        public FastReader(){
            br = new BufferedReader(
                new InputStreamReader(System.in));
        }
 
        String next(){
            while (st == null || !st.hasMoreElements()) {
                try {
                    st = new StringTokenizer(br.readLine());
                }
                catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return st.nextToken();
        }
 
        int nextInt() { return Integer.parseInt(next()); }
 
        long nextLong() { return Long.parseLong(next()); }
 
        double nextDouble(){
            return Double.parseDouble(next());
        }
 
        String nextLine(){
            String str = "";
            try {
                str = br.readLine();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            return str;
        }
    }
 
    public static boolean CheckPrime(int N){
        
        int count = 0;
        
        for(int i =1;i<=N;i++){
            if(N%i==0){
                count++;
            }
        }
        if(count==2){
            return true;
        }
        return false;
    }
 
    public static void main(String[] args){
	
        FastReader sc = new FastReader();
        int N = sc.nextInt();
        int[] arr = new int[N];
        
        for(int i = 0;i<N;i++){
            arr[i] = sc.nextInt();
        }
      int sum = 0;
      for(int i = 0;i<N;i++){
          for(int j =0;j<N;j++){
              if(i<j && CheckPrime(j-i)){
                  sum+=Math.abs(arr[i]-arr[j]);
              }
          }
      }
      System.out.println(sum);
    }
	
}
