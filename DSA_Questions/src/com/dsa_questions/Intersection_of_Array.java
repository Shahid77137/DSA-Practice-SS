package com.dsa_questions;

/*
 * Question
 * 
 * You are given 2 arrays arr and arr2 of N integers
 * Your task is to find a integer that is present in both arrays
 * 
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;
import java.util.StringTokenizer;

public class Intersection_of_Array {

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
        int[] arr2 = new int[N];
        
        for(int i = 0;i<N;i++){
            arr[i] = sc.nextInt();
        }
        for(int i = 0;i<N;i++){
            arr2[i] = sc.nextInt();
        }
      
        for(int i = 0;i<N;i++){
            for(int j = 0;j<N;j++){
                if(arr[i] == arr2[j]){
                    System.out.println(arr[i]);
                }
            }
        }
    }
	
}
