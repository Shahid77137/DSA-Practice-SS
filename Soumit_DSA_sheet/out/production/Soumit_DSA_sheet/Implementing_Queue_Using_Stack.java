public class Implementing_Queue_Using_Stack{

    Stack<Integer> s1 = new Stack<>();

    Stack<Integer> s2 = new Stack<>();


    public void push(int x) {

        s1.push(x);

    }

    public int pop() {

        if(!s2.empty()){

            return s2.pop();

        }else{

            while(!s1.empty()){

                int temp = s1.pop();

                s2.push(temp);

            }

            return s2.pop();
        }


    }

    public int peek() {

        if(!s2.empty()){

            return s2.peek();

        } else{

            while(!s1.empty()){

                int temp = s1.pop();

                s2.push(temp);

            }

            return s2.peek();

        }

    }

    public boolean empty() {

        if(s1.empty() == false){

            if(s2.empty()){

                while(!s1.empty()){

                    int temp = s1.pop();

                    s2.push(temp);

                }

            }

            return false;

        }

        else{

            return s2.isEmpty();

        }

    }
    
    
}