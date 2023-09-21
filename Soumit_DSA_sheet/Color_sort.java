/*
 * Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

You must solve this problem without using the library's sort function.
 *
 *
 *
 * It is simple sorting you use any sorting method except the library methods
 *
 */

public class Color_sort {

    public void sortColors(int[] nums) {
        // Bubble sort

        for(int i=nums.length-1;i>=0;i--){
            for(int j=0;j<i;j++){
                if(nums[j] > nums[j+1]){
                    int temp = nums[j];
                    nums[j] = nums[j+1];
                    nums[j+1] = temp;
                }
            }
        }


        // Selection sort

        // for(int i=0;i<n;i++){
        //     int minIndex = i;
        //     for(int j=i+1;j<n;j++){
        //         if(a[j] < a[minIndex]){
        //             minIndex = j;
        //         }
        //     }
        //     int temp = a[minIndex];
        //     a[minIndex] = a[i];
        //     a[i] = temp;
        // }

//        Arrays.sort(nums);
    }

}
