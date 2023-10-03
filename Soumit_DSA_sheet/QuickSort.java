/*

 Quick sort is based on divide and conquor technique
 The given array will be divided into subarrays and this is known as partitioning

 let array = [6 , 3 , 9 , 5 , 2 , 8];

 here we are taking last element 8 as our pivot element

 We have to partition the element in a way Such that all the elements that are smaller than the pivot element should be arranged at the left side of the pivot element and all the element that are larger than our pivot element should be arranged on the right side of the pivot element and if we get a elemet that is equal to the pivot element then we can arrange it in any side

 Then we will again take a pivot element on left array and right array and patition them as we have done previously to the whole array we will do this until we reach 1 element left

 Now how we can do this we will take two pointer (low , high) low compare the low element with pivot and if it is smaller than pivot then i
 should be incremented i++

 when you find any element that greater than the pivot then we will swap the ith value with the low value

 when you find any element that is greater than pivot element then decrement the end until you find a element that is smaller than pivot

 Now when our both pointers are stopped swap the values of those two pointers

 Now after swapping again start the compare and increment and decrement process

 If the start pointer crossed the end pointer then don't swap the start value with end value but instead swap the end pointer value with the pivot value

 */


public class QuickSort {

    public static int partition(int[] arr,int low,int high){

        int pivot = arr[high];
        int i = low-1;

        for(int j = low; j < high; j++){ // This loop runs till the second last element because last element is our pivot

            if(arr[j] < pivot){ // with the help of these if statement we are arranging all the elements that are smaller than pivot at the front

                i++;

                // We will do swaping with arr[j] and arr[i] initally value of i is empty and we got a value in arr[j] that is smaller than pivot so we will store that value in the arr[i]

                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;

            }

        }
        // in this swapping we are first incrementing i and swapping the pivot value with ith value and the assign the arr[high] which was the index of pivot before swapping to temp or arr[i] value and returning i which is the current index of pivot after swapping
        i++;
        int temp = arr[i];
        arr[i] = pivot;
        arr[high] = temp;
        return i;
    }



    public static void quickSort(int[] arr,int low,int high){

        if(low < high){
            int pindex = partition(arr,low,high);

            quickSort(arr,low,pindex-1); // it sorts the elements from low to pivot-1
            quickSort(arr,pindex+1,high); // it sorts the elements from pivot+1 to high
        }

    }



    public static void main(String[] args) {

        int[] arr = {6 , 3 , 9 , 5 , 2 , 8};
        int n = arr.length;


        quickSort(arr,0,n-1);

        for(int i=0;i<n;i++){
            System.out.print(arr[i]+" ");
        }
        System.out.println(" ");

    }

}


// Time complexity of quick sort in worst case is O(n^2) (Worst case happens only when everytime our pivot is the smallest element or the largest element)
// Time complexity of quick sort in worst case is O(nlogn)


// Merge sort is used when you have extra memory so that you can make a extra array but we want the time complexity to be O(nlogn) even in the  worst case
// Quick sort is used when we have low memory and we want the average time complexity to be O(nlogn)