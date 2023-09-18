package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

/*
 * Question
 * You are given a matrix of N*M you have to travrese it in a zig zag pattern
 * 
 */

public class Go_in_Zig_Zag {

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
        
        for(int i=0;i<N;i++){
            for(int j = 0;j<M;j++){
                arr[i][j] = sc.nextInt();
            }
        }
        
        for(int i=0;i<N;i++){
            
            if(i%2==0 || i==0){
              for(int j = M-1;j>=0;j--){
                System.out.print(arr[i][j]+" ");
            }  
            }else{
              for(int j = 0;j<M;j++){
                System.out.print(arr[i][j]+" ");
            }  
            }
   
        }

    }
	
}
