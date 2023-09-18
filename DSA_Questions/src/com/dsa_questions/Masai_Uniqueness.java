package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;
import java.util.StringTokenizer;


/*
 * Question
 * You are given a string str.
 * You have to write a program that comments if it has all unique characters or not
 * 
 */


public class Masai_Uniqueness {

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
        String str = sc.next();
        char[] ch = str.toCharArray();

        Arrays.sort(ch);
        
        boolean flag = true;
        for(int i = 0;i<ch.length-1;i++){
            if(ch[i] == ch[i+1]){
                flag = false;
            }
        }
        System.out.println(flag?"Unique":"No");
      
    }
	
	
}
