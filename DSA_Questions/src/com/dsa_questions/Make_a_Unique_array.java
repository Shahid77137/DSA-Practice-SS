package com.dsa_questions;

/*
 * Question
 * 
 * Given a sorted array of length N , remove the duplicates from the array
 * 
 * Input     |    Output
 *           |
 * 5         |  
 * 2 2 2 7 9 |    2 7 9
 *
 */


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;
import java.util.StringTokenizer;
public class Make_a_Unique_array {

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
				//This will take the input
        FastReader sc = new FastReader();
        
        int N = sc.nextInt();
        List<Integer> list = new ArrayList<>();
        
        for(int i = 0;i<N;i++){
            list.add(sc.nextInt());
        }
        

        for(int i = N-2;i>=0;i--){
            if(list.get(i) == list.get(i+1)){
                list.remove(i);
            }
        }
        
        
        StringBuilder sb = new StringBuilder();
        for(Integer s:list){
            sb.append(s);
            sb.append(" ");
        }
        System.out.println(sb);
    }
	
}
