package com.dsa_questions;

import java.util.*;

public class Summer_internship {

    public static String Summer(int[] arr){

        int five = 0;

        int ten = 0;

        for(int i = 0;i < arr.length;i++){

            if(arr[i] == 5){

                five++;

            }else if(arr[i] == 10){

                if(five >= 1){

                    five--;

                    ten++;

                }else{

                    return "NO";

                }

            }else if(arr[i] == 20){

                if(ten >= 1 && five >= 1){

                    ten--;

                    five--;

                }else if(five >= 3){

                    five = five - 3;

                }else{

                    return "NO";

                }

            }


        }

        return "YES";

    }


    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);

        int tc = sc.nextInt();

        for(int i = 0; i < tc; i++){

            int n = sc.nextInt();

            int arr[] = new int[n];

            for(int j = 0;j < n ; j++){

                arr[j] = sc.nextInt();

            }

            String ans = Summer(arr);

            System.out.println(ans);


        }

        sc.close();

    }

}


