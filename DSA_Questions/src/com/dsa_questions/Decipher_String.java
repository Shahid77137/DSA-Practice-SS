package com.dsa_questions;

import java.util.*;

public class Decipher_String {


    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);

        int tc = sc.nextInt();

        for(int i=0;i<tc;i++){

            String str = "";

            int strlen = sc.nextInt();

            str += sc.next();

            String bag = "";

            char[] ch = str.toCharArray();

            for(int j = 0; j < ch.length ; j++){

                int num = 0;

                if(j % 2 != 0){

                    num = Integer.parseInt(ch[j]+"");

                    for(int k = 0; k<num; k++){

                        bag += (ch[j-1])+"";

                    }

                }

            }

            System.out.println(bag);

        }

    }

}


