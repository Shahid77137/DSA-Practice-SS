public class QuickSort_try2 {


    public static int partition(int[] arr,int low,int high){

        int pivot = arr[high];
        int i = low-1;

        for(int j=low;j<high;j++){

            if(arr[j] < pivot){
                i++;
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }

        }
        i++;
        int tem = arr[i];
        arr[i] = pivot;
        arr[high] = tem;

        return i;
    }

    public static void quickSort(int[] arr,int low,int high){

        if(low < high){

            int pindex = partition(arr,low,high);

            quickSort(arr,low,pindex-1);
            quickSort(arr,pindex+1,high);

        }

    }

    public static void main(String[] args) {

        int[] arr = {2,6,8,3,10,5,6,1};
        int n = arr.length;

        quickSort(arr,0,n-1);

        for(int a:arr){
            System.out.print(a+" ");
        }

    }

}
