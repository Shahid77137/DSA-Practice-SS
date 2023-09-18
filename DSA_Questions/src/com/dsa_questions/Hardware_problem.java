package com.dsa_questions;

public class Hardware_problem {

}
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;
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
        
        int tc = sc.nextInt();
        
        for(int t=0;t<tc;t++){
            
            int N = sc.nextInt();
            int D = sc.nextInt();
            
            int[] arr = new int[N];
            
            for(int i=0;i<N;i++){
                arr[i] = sc.nextInt();
            }
            
            int sub =0;
            boolean flag = false;
            for(int i=0;i<N-1 && !flag;i++){
                if(arr[i+1]-arr[i] <= D){
                    System.out.println(arr[i+1]);
                    flag = true;
                }
            }
            if(!flag){
                System.out.println(-1);
            }
            
        }
        
    }

}

