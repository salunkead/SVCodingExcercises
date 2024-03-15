////Merge Sorted Array
/*
Q. You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.
   Merge nums1 and nums2 into a single array sorted in non-decreasing order.
   The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

Example 1:

Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
Output: [1,2,2,3,5,6]
Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.

Example 2:

Input: nums1 = [1], m = 1, nums2 = [], n = 0
Output: [1]
Explanation: The arrays we are merging are [1] and [].
The result of the merge is [1].
*/

///Solution
module test;
  int arr1[],arr2[];
  function void merge(int a[],int b[]);
    automatic int arr[],k=0,m;
    for(int i=0;i<($size(a)+$size(b));i++)
      begin
        if(i<$size(a))
          begin
            if(i==0 && (a[i]==0 || a[i]!=0))
              begin
                k++;
                arr=new[k];
                arr[k-1]=a[i];
              end
            else if(i>0 && a[i]!=0)
              begin
                k++;
                arr=new[k](arr);
                arr[k-1]=a[i];
              end
          end
        else
          begin
            m=i-$size(a);
            if(m==0 && (b[m]==0 || b[m]!=0))
              begin
                k++;
                arr=new[k](arr);
                arr[k-1]=b[m];
              end
            else if(m>0 && b[m]!=0)
              begin
                k++;
                arr=new[k](arr);
                arr[k-1]=b[m];
              end
          end
      end
    arr.sort;
    $display("%p",arr);
  endfunction
  
  initial
    begin
      arr1=new[6];
      arr2=new[3];
      arr1='{1,2,3,0,0,0};
      arr2='{2,5,6};
      merge(arr1,arr2);
      $display("--------------------------");
      arr1=new[1];
      arr2=new[0];
      arr1='{1};
      arr2='{};
       merge(arr1,arr2);
      $display("--------------------------");
    end
endmodule
