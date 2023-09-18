package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

/*
 * Question
 * 
 * You are given an array stored with the variable arr.whose size is stored in the variable N
 * You have to find the count of all sub arrays whose sums are even
 * 
 */

public class even_sum_subarray {

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
        
        for(int i=0;i<N;i++){
        
            arr[i] = sc.nextInt();
        }
        
        int count = 0;
        
        for(int i=0;i<N;i++){
            
            int sum = 0;
            
            for(int j=i;j<N;j++){
                
                sum+=arr[j];
                
                if(sum%2==0){
                    count++;
                }   
            }    
        }
      System.out.println(count);
    }

}
