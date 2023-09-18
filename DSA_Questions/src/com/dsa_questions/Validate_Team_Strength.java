package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;


/*
 * Question
 * There are two teams.Given an integer N and an array of 2N length.
 * First N elements of an array represents the strength of the first team and second N elements represent the strength of the second team
 * You have to take the absolute difference of the total strength of both the array and if this differnce is less than given integer K
 * then print Valid else Invalid
 * 
 */


public class Validate_Team_Strength {

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
      
        int N = sc.nextInt()*2;
        int K = sc.nextInt();
        
        int[] arr = new int[N];
        
        for(int i = 0;i<N;i++){
            arr[i] = sc.nextInt();
        }
        
        
        int sum1 = 0;
        int sum2 = 0;
        for(int i=0;i<N;i++){

            if(i<N/2){
                sum1+=arr[i];
            }else{
                sum2+=arr[i];
            }
            
        }
        System.out.println(Math.abs(sum1-sum2)>K?"Invalid":"Valid");

        
    }
}
