package com.dsa_questions;

/*
 * Question
 * 
 * You are given an integer num
 * You need to print "Yes" if that integer is a palindrome or else print "No"
 * A palindrome is a word,number,phrase or other sequence of characters that reads the same backwards and forwards 
 * For Example racecar
 * 
 * 
 * Input        |    Output           
 *              |
 * 1221         |     Yes
 * 
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class Detect_Palindrome {

	
	 
	    static class FastReader {
	        BufferedReader br;
	        StringTokenizer st;
	 
	        public FastReader()
	        {
	            br = new BufferedReader(
	                new InputStreamReader(System.in));
	        }
	 
	        String next()
	        {
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
	 
	        double nextDouble()
	        {
	            return Double.parseDouble(next());
	        }
	 
	        String nextLine()
	        {
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
	 
	    public static void main(String[] args) {
	    
			//This will take the input
	        FastReader sc = new FastReader();

	        int num = sc.nextInt();
	        String[] arr = Integer.toString(num).split("");
	        
	        String bag1 = "";
	        String bag2 = "";
	        
	        for(int i = 0;i<arr.length;i++) {
	        	bag1+=arr[i];
	        }
	        
	        for(int i = arr.length-1;i>=0;i--) {
	        	bag2+=arr[i];
	        }
	        
	        if(bag1.equals(bag2)) {
	        	System.out.println("Yes");
	        }else {
	        	System.out.println("No");
	        }
	        
	    }

	}
	

