import java.lang.*;
import java.io.*;
import java.util.*;
import java.util.HashMap;
import java.util.Stack;
// Check Parenthesis is balanced or not balanced
public class Main{
  //This function returns whether the string is balanced or not with the help of a stack.
  public static boolean balancedParenthesis(String a){
    HashMap<Character,Character> map = new HashMap<>();
    map.put('(',')');
    map.put('[',']');
    map.put('{','}');
    Stack<Character> stack = new Stack<>();
    for (int i=0;i<a.length();i++){
      if (a.charAt(i) == '(' || a.charAt(i) == '[' || a.charAt(i) =='{') stack.push(a.charAt(i));
      else{
        if (stack.isEmpty()) return false;
        if (map.get(stack.peek()) != a.charAt(i)) return false;
        stack.pop();
      }
    }
    if (stack.isEmpty()) return true;
      return false;
  }
  public static void main(String[] args){
      int n = 6;
      String a = "[()]{}";
      if (balancedParenthesis(a)) System.out.println("Yes Balanced");
      else{
        System.out.println("Not Balanced");
      }
  }
}