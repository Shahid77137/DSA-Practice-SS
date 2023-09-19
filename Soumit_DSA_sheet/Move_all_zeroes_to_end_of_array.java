/*
 * Given an array arr[] of N positive integers. Push all the zeros of the given array to the right end of the array while maintaining the order of non-zero elements.
 *
 *
 * Here we are using two pointers
 *
 * First pointer will start from 0 and Second pointer will start from 1
 *
 * when The 1st pointer's value is 0 then that pointer will not increment but only the 2nd pointer will increment until it gets a value other than 0
 *
 * When 2nd pointer gets a value then it swaps the value with the first pointer value and 1st pointer increment
 *
 * then 1st pointer increments 2nd pointer becomes +1 of 1st pointer
 *
 */

public class Move_all_zeroes_to_end_of_array {

    void pushZerosToEnd(int[] arr, int n) {

        int j = -1;

        for(int i=0;i<n;i++){
            if(arr[i] == 0){
                j = i;
                break;
            }
        }

        if(j != -1){

            for(int i = j+1;i<n;i++){

                if(arr[i] != 0){

                    int temp = arr[j];
                    arr[j] = arr[i];
                    arr[i] = temp;
                    j++;

                }
            }
        }


    }

}
