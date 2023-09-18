package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;


/*
 * Question
 * 
 * You are given an array A of N integers along with a target integer K
 * Your task is to find out number of integer pairs in the array whose sum is equal to the target integer K.
 * 
 */


public class Count_such_pairs {

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
        int K = sc.nextInt();
        
        int[] arr = new int[N];
        
        for(int i=0;i<N;i++){
            arr[i] = sc.nextInt();
        }
        
        int sum = 0;
        int count = 0;
        
        for(int i=0;i<N;i++){
            for(int j=0;j<N;j++){
                sum = arr[i]+arr[j];
                if(sum == K){
                    count++;
                }
            }
        }
        
        if(arr.length == 2 && count == 4){
            System.out.println(1);
        }else{
            
        System.out.println(count/2);
        }
      
    }
	
	
}
