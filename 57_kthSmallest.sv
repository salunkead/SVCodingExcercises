////Kth smallest element
/*
Q.Given an array arr[] and an integer K where K is smaller than size of array, the task is to find the Kth smallest element in the given array. It is given that all array elements are distinct.

Note :-  l and r denotes the starting and ending index of the array.

Example 1:

Input:
N = 6
arr[] = 7 10 4 3 20 15
K = 3
L=0 R=5

Output : 7
Explanation :
3rd smallest element in the given 
array is 7.

Example 2:

Input:
N = 5
arr[] = 7 10 4 20 15
K = 4 L=0 R=4
Output : 15
Explanation :
4th smallest element in the given 
array is 15.
*/

/////Solution
module test;
  int arr[];
  function void kthSmallest(int a[],int l,r,k);
    automatic int q[$],j;
    for(int i=l;i<=r;i++)
      begin
        q[j]=a[i];
        j++;
      end
    q.sort;
    $display("%0d",q[k-1]);
  endfunction
  
  initial
    begin
      arr=new[6];
      arr='{7 ,10 ,4 ,3 ,20 ,15};
      kthSmallest(arr,0,5,3);
      arr=new[5];
      arr='{7 ,10 ,4 ,20 ,15};
      kthSmallest(arr,0,4,4);
    end
endmodule
