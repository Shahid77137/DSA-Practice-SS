package com.dsa_questions;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;


/*
 * Question
 * 
 * You are provided highest runs N ever scored in a cricket match till now.Which is current highest score
 * You are also given current runs M scored by sachin in today's match
 * 
 * If sachin breaks the current record print "Broken"
 * If sachin couldn't break that current record print "Not Yet"
 * If sachin scores exactly as the current record print "Wao"
 * 
 */


public class Breaking_a_record {

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
        int M = sc.nextInt();
        
        if(N > M){
            System.out.println("Not Yet");
        }else if(N == M){
            System.out.println("Wao");
        }else{
            System.out.println("Broken");
        }
        
    }
	
}
