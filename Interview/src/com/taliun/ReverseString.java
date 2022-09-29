package com.taliun;

public class ReverseString {
    public static void main(String[] args) {
        String input = "Hello, World!";
        StringBuilder reversedString = reverseUsingForLoop(input);
        System.out.println(reversedString);
    }

    public static StringBuilder reverseUsingForLoop(String input) {
        int length = input.length();
        StringBuilder reversed = new StringBuilder(length);

        for (int i = length - 1; i >= 0; i--) {
            reversed.append(input.charAt(i));
        }

        return reversed;
    }
}

// If I am using StringBuilder and if return type of the method is String so we have to add toString 
