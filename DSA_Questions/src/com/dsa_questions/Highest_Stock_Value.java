package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;


/*
 * Question
 * Chunnu wants to become a trader.He wants to find the highest value of the stock in a day.
 * The value of stock changes N times during the day
 * When the day starts the value of the stock is 0
 * You are given a array of length N where arr[i] is the net change in the value of the stock throughtout the day.
 * You need to find the highest stock value
 * 
 */


public class Highest_Stock_Value {

	
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
        int[] arr = new int[N];
        
        for(int i = 0;i<N;i++){
            arr[i] = sc.nextInt();
        }
        
        int max = 0;
        int sum = 0;
        
        for(int i=0;i<N;i++){
            sum+=arr[i];
            
            if(sum>max){
                max = sum;
            }
            
        }
        System.out.println(max);
    }
	
}
