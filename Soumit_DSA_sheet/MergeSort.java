public class MergeSort {

/*

Pass a starting index and a ending index as si and ei

Now get a mid index by si + (ei - si)/2

Now your array is divided into two parts

Now further divide them into two halves 1st half will be from si to mid and next will be from mid+1 to ei

Now when the array cannot be further divided because now all the elements are single

then start the conquor method

now sort th

 */

    public static void conquor(int[] arr,int si,int mid,int ei){

        int merged[] = new int[ei-si+1];

        int idx1 = si;
        int idx2 = mid+1;
        int x = 0;

        while(idx1 <= mid && idx2 <= ei){

            if(arr[idx1] <= arr[idx2]){
                merged[x++] = arr[idx1++];
            }else{
                merged[x++] = arr[idx2++];
            }

        }

        while(idx1 <= mid){
            merged[x++] = arr[idx1++];
        }

        while(idx2 <= ei){
            merged[x++] = arr[idx2++];
        }


        for(int i=0, j=si;i<merged.length;i++,j++){
            arr[j] = merged[i];
        }

    }
    public static void divide(int[] arr,int si,int ei){

        if(si >= ei){
            return;
        }

        int mid = si+(ei-si)/2;
        divide(arr,si,mid);
        divide(arr,mid+1,ei);
        conquor(arr,si,mid,ei);
    }

    public static void main(String[] args) {

        int[] arr = {6,3,9,5,2,8};
        int n = arr.length;

        divide(arr,0,n-1);

        for(int a:arr){
            System.out.print(a+" ");
        }

    }

}
