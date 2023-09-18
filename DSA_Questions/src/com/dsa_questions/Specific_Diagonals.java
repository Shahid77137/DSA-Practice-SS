package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;


/*
 * Question
 * 
 * Given a matrix of N amd M and an inetger K.
 * You need to print both the diagonals crossing through the integer K
 * 
 */



public class Specific_Diagonals {

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
 
    public static void main(String[] args){
		
        FastReader sc = new FastReader();
        int N = sc.nextInt();
        int M = sc.nextInt();
        
        int[][] arr = new int[N][M];
        
        for(int i = 0;i<N;i++){
            for(int j = 0;j<M;j++){
              
              arr[i][j] = sc.nextInt();
                
            }
        }
        
        
        int K = sc.nextInt();
        int diff1 = 0;
        int diff2 = 0;
        
        for(int i = 0;i<N;i++){
            for(int j = 0;j<M;j++){
              
              if(arr[i][j] == K){
                  diff1 = j-i;
                  diff2 = j+i;
              }
                
            }
        }
        String bag1 = "";
        String bag2 = "";
        for(int i = 0;i<N;i++){
            for(int j = 0;j<M;j++){
              
              if(j-i == diff1){
                  bag1+=arr[i][j]+" ";
              }
                
            }
        }
        for(int i = 0;i<N;i++){
            for(int j = 0;j<M;j++){
              
              if(j+i == diff2){
                  bag2+=arr[i][j]+" ";
              }
                
            }
        }
        System.out.println(bag1);
        System.out.println(bag2);
      
    }
	
}
