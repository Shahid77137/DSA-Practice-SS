package com.dsa_questions;

/*
 * 
 * You are given a string s. You need to reverse the string.

Example 1:

Input:
s = Geeks
Output: skeeG
Example 2:

Input:
s = for
Output: rof
 * 
 */


public class Reverse_a_String {
	
	public static String reverseWord(String str)
    {
       char[] ch = str.toCharArray();
       String reversedstring = "";
       
       for(int i=ch.length-1;i>=0;i--){
           reversedstring += ch[i];
       }
       return reversedstring;
    }
	
}
