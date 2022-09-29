package com.taliun;

//write a program to reverse a String without ANY LOOP

public class problem1 {
    public static void main(String[] args) {
        String str = "abcd";

        StringBuilder revstr = new StringBuilder(str).reverse();

        System.out.println(revstr);

        String input = "Hello, World!";
        char[] chars = input.toCharArray();
        int left = 0;
        int right = chars.length - 1;

        while (left < right) {
            // Swap characters at left and right indices
            char temp = chars[left];
            chars[left] = chars[right];
            chars[right] = temp;

            left++;
            right--;
        }
        System.out.println(input);
        String reversedString = new String(chars);
        System.out.println(reversedString);
        // String newstr = reverseStr(str);

        // System.out.println(newstr);

    }
    // public static String reverseStr(String str) {
    //
    // if(str.isEmpty()) {
    // return str;
    // }
    //
    // return reverseStr(str.substring(1))+str.charAt(0);
    //
    // }
}
