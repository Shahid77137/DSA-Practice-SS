import java.util.Arrays;

/*
 * Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
 *
 *
 * Example 1:

   Input: nums = [3,0,1]
   Output: 2

   Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the     range since it does not appear in nums.
Example 2:

   Input: nums = [0,1]
   Output: 2
   Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.


 *
 * First we are shorting the array
 *
 * Second we are assigning a the largest value + 1 because if arr[0] == 1 and also no number is misssing then the answer must be largest number +1
 *
 * Thirdly we are checking some edge cases
 *
 * Thenn we are running the loop and checking the differnce between arr[i] and arr[i+1] if the difference is not 1 then return that number
 *
 * It is a bruteforce approach which is accepted in leetcode.
 *
 */




public class Missing_Number {

    public int missingNumber(int[] nums) {

        Arrays.sort(nums);

        int a = nums[nums.length-1]+1;
        boolean flag = false;

        if(nums.length == 1 && nums[0] == 0){
            a = 1;
        }else if(nums.length == 1 && nums[0] == 1){
            a = 0;
        }else if(nums[0] == 1){
            a = 0;
            return a;
        }

        for(int i=0;i<nums.length-1 && !flag;i++){

            if((nums[i+1] - nums[i]) != 1){
                a = nums[i] + 1;
                flag = true;
            }

        }
        return a;

    }

}
