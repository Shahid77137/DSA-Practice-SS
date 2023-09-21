import java.util.HashMap;
import java.util.Map;


/*
 *
 * Given an array A of N elements. Find the majority element in the array. A majority element in an array A of size N is an element that appears strictly more than N/2 times in the array.


Example 1:

Input:
N = 3
A[] = {1,2,3}
Output:
-1
Explanation:
Since, each element in
{1,2,3} appears only once so there
is no majority element.
Example 2:

Input:
N = 5
A[] = {3,1,3,3,2}
Output:
3
Explanation:
Since, 3 is present more
than N/2 times, so it is
the majority element


 *
 *  First we are storing the values of array in map with key and values like the key are the values of the array and values are how many times those key occurs
 *
 *  and then in the second loop we are traversing the map and checking only the values > size/2 if yes then return the corresponding key
 *
 *
 */

public class Majority_Element {

    static int majorityElement(int a[], int size)
    {


        Map<Integer,Integer> map = new HashMap<>();

        for(int i=0;i<size;i++){
            int value = map.getOrDefault(a[i],0);
            map.put(a[i],value+1);
        }

        for(Map.Entry<Integer,Integer> it: map.entrySet()){

            if(it.getValue() > size/2){
                return it.getKey();
            }

        }
        return -1;
    }

}
