import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


/*
 * Given an array of size N. The task is to rotate array by D elements where D ≤ N.
 *
 * arr = [ 1 , 2 , 3 , 4 , 5 , 6 , 7 ]
 *
 * Approach
 *
 * First we are storing all the array elements to a list
 *
 * Second we are reversing the list from 0 to d so the list becomes  3 2 1 4 5 6 7
 *
 * Thirdly we are reversing the list from d to n so the list becomes  3 2 1 7 6 5 4
 *
 * Fourthly we are reversing the whole list from 0 to n so the list becomes  4 5 6 7 1 2 3
 *
 */
public class Rotating_an_Array {

    void leftRotate(int[] arr, int n, int d) {

        List<Integer> list = new ArrayList<>();

        for(int a:arr){
            list.add(a);
        }

        Collections.reverse(list.subList(0,d));
        Collections.reverse(list.subList(d,n));
        Collections.reverse(list.subList(0,n));


        for(int i=0;i<n;i++){
            arr[i] = list.get(i);
        }

    }

}
