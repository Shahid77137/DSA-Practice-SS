package com.taliun;

//write a program to reverse a String without ANY LOOP

public class problem1 {
public static void main(String[] args) {
	String str = "abcd";
	
	StringBuilder revstr = new StringBuilder(str).reverse();
	
	System.out.println(revstr);
	
//	String newstr = reverseStr(str);
	
	
//	System.out.println(newstr);

}
// public static String reverseStr(String str) {
//	 
//	 if(str.isEmpty()) {
//		 return str;
//	 }
//	 
//	return reverseStr(str.substring(1))+str.charAt(0);
//	 
// }
}
