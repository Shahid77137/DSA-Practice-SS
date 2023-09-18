package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;


/*
 * Question
 * 
 * Given an array A of N positive integers.
 * The task is to find the position where the equilibrium first occurs in the array.
 * Equilibrium position in an array is a position such that the sum of the elements before it and after it are same
 * 
 */



public class Equilibrium_Element{

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
        int bag = 0;
        for(int i=0;i<N;i++){
            int sumL = 0;
            int sumR = 0;
            
            for(int j=0;j<i;j++){
                sumR+=arr[j];
            }
            
            for(int j=i+1;j<N;j++){
                sumL+=arr[j];
            }
            if(sumR == sumL){
                count++;
                bag = arr[i-1];
            }
        }
        
        if(count!=0){
            System.out.println(bag);
        }else{
            System.out.println(-1);
        }

    }
	
}
