package com.dsa_questions;


/*
 * Question
 * 
 * Given a string s of all lowercase characters and each character having a a value of its own
 * The value of alphabet a is 1,b is 2 till z is 26
 * Now you have to find the total value of the string
 * 
 */


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class String_value {

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
      
        String alpha = "abcdefghijklmnopqrstuvwxyz";
        char[] ch = alpha.toCharArray();
        
        String str = sc.next();
        char[] ch2 = str.toCharArray();
        
        int sum = 0;
        
        for(int i = 0;i<str.length();i++){
            for(int j=0;j<26;j++){
                if(ch2[i] == ch[j]){
                    sum+=j+1;
                }
            }
        }
        
    System.out.println(sum);

    }

}
