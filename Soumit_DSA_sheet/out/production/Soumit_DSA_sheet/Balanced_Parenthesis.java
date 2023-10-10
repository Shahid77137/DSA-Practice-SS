public class Balanced_Parenthesis {

    public boolean isValid(String s) {

        char[] ch = s.toCharArray();

        Stack<Character> stack = new Stack<>();

        if(ch[0] == ')' || ch[0] == '}' || ch[0] == ']'){

            return false;

        }

        for(int i = 0;i < ch.length;i++){


            if(ch[i] == '(' || ch[i] == '{' || ch[i] == '['){

                stack.push(ch[i]);

            }else{
                if (stack.isEmpty()) {
                    return false;
                }
                if(stack.peek() == '(' && ch[i] == ')'){

                    stack.pop();


                }else if(stack.peek() == '{' && ch[i] == '}'){

                    stack.pop();

                }else if(stack.peek() == '[' && ch[i] == ']'){

                    stack.pop();

                }
                else{

                    return false;

                }

            }

        }


        if(stack.isEmpty()){

            return true;

        }else{

            return false;

        }

    }

}