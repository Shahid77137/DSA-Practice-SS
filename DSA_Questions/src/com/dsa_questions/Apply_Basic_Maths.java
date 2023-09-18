package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

/*
 * Question
 * You are given an array A with N elements.You are allowed to remove only one element
 * Which makes the sum of the reamaining elements exactly divivsible by 7
 * Your task is to find the first index of the smallest element that can be removed from array
 * If there is no such element print -1.
 * 
 *  
 *  Input     |    Output
 *            |
 * 5          |
 * 14 7 8 2 4 |      1
 */


public class Apply_Basic_Maths {
	
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
        
        int min = Integer.MAX_VALUE;
        int index = 0;
        for(int i = 0;i<N;i++){
            int sum = 0;
            for(int j = 0;j<N;j++){
                if(arr[j] != arr[i]){
                    sum+=arr[j];
                }
            }
            if(sum%7==0 && arr[i]<min && sum!=0){
                min = arr[i];
                index = i;
            }
        }
        if(index != 0){
            System.out.println(index);
        }else{
            System.out.println(-1);
        }
    }
}
