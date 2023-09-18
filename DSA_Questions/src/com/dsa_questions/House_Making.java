package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;


/*
 * Question
 * 
 * You are making your dream house so you want to make best possible use of the materials
 * So you need material for building the house
 * You are given a number N which is the total number of materials and a number K which is the price of each material
 * Declare a variable with the name tile which has tiles=N*K;
 * If the value stored in tiles is greater than or equal to 1000 and divisible by 5 then print yes else no.
 * 
 */



public class House_Making {

	
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
        
        int tiles= N*K;
        
        if(tiles>=1000 && tiles%5==0){
            System.out.println("yes");
        }else{
            System.out.println("no");
        }
   
    }
	
}
