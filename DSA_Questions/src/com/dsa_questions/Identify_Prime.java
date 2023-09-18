package com.dsa_questions;

/*
 * Question
 * 
 * You are given a number with name N
 * Check if the number is prime or not
 * If the value stored in N is prime then print "Yes" else print "No"
 * 
 * 
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class Identify_Prime {

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
        
        int count = 0;
        
        for(int i = 1;i<=N;i++){
            if(N%i == 0){
                count++;
            }
        }
        
        if(count == 2){
            System.out.println("Yes");
        }else{
            System.out.println("No");
        }
      
    }
	
}
