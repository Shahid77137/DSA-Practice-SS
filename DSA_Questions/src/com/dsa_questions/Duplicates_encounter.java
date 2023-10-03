package com.dsa_questions;

import java.util.*;

public class Duplicates_encounter {

    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);

        String str = sc.next();

        char[] ch = str.toCharArray();

        String bag = "";

        for(int j = 0;j < ch.length-1; j++){

            if(ch[j] == ch[j+1]){

                ch[j] = '0';
                ch[j+1] = '0';

            }

        }

        for(int k = 0;k<ch.length;k++){

            if(ch[k] != '0'){

                bag += ch[k];

            }

        }

        if(bag == ""){

            System.out.println("Empty String");

        }else{

            System.out.println(bag);

        }

    }

}


