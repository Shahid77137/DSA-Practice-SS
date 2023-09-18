package com.dsa_questions;

public class Pattern_Printing_Hollow_Square {

}

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;
 
class Main {

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
        
        for(int i=0;i<N;i++){
            String bag = "";
            for(int j=0;j<N;j++){
                if(i == 0 || i == N-1){
                    bag+="* ";
                }else if(j == 0 || j == N-1){
                    bag+="* ";
                }else{
                    bag+="  ";
                }
                }
                System.out.println(bag);
            }
        }
      
    }





