public static int maxSubArray(int[] nums) {

        int max = nums[0];
        int n = nums.length;
        int sum = 0;

        for(int i = 0;i < n;i++){

        sum += nums[i];

        if(sum > max){

        max = sum;

        }

        if(sum < 0){

        sum = 0;

        }

        }

        return max;


        }

public static void main(String[] args) {

        int[] arr = {1,2,3,-2,5};

        int n = arr.length;

        maxSubArray(arr);

        }