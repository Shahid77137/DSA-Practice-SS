package com.dsa_questions;

public class Mark_and_toys {

}
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;
 
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
        int K = sc.nextInt();
        
        int[] arr = new int[N];
        
        for(int i=0;i<N;i++){
            arr[i] = sc.nextInt();
        }
        
       
        Arrays.sort(arr);
        
        int count = 0;
        int sum = 0;
        boolean flag = false;
        for(int i=0;i<N && !flag;i++){
            if(arr[i] < K){
                sum+=arr[i];
                if(sum <= K){
                    count++;
                }else{
                   flag = true; 
                }
            }
            
        }
      System.out.println(count);
    }

}

