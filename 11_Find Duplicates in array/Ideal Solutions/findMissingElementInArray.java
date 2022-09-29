public class findMissingElementInArray {
    public static int sumOfNaturalNumbers(int N){
		int sum = N * (N + 1)/2;
		return sum;
	}
	//This function finds out the duplicate element in the array
	public static int findDuplicatesInArray(int[] arr,int n){
		int S1 = 0;
		for (int i=0;i<arr.length;i++) S1 += arr[i];
		int S2 = sumOfNaturalNumbers(n);
		System.out.println(S2);
		System.out.println(S1);
		int ans = S2 - S1;
		return ans;
	}
	//Main Function
	public static void main(String[] args){
        int[] arr = {1,3,2,4,6,7};
		int n = arr.length;
		int ans = findDuplicatesInArray(arr,n);
		System.out.println("Missing Element in array is " +ans);
	}
}
