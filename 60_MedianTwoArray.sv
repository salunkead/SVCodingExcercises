// Median of Two Sorted Arrays
/*
Q.Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
Example 1:

Input: nums1 = [1,3], nums2 = [2]
Output: 2.00000
Explanation: merged array = [1,2,3] and median is 2.

Example 2:

Input: nums1 = [1,2], nums2 = [3,4]
Output: 2.50000
Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.

*/

///Solution
module test;
  int arr1[],arr2[];
  function void median(int arr1[],arr2[]);
    automatic int r[];
    r=new[$size(arr1)+$size(arr2)];
    r={arr1,arr2};
    r.sort;
    $display("Merged Array is : %p",r);
    $display("Median is : %0.4f",real'(r.sum)/real'($size(r)));
  endfunction
  
  initial
    begin
      arr1=new[2];
      arr2=new[1];
      arr1={1,3};
      arr2 = {2};
      median(arr1,arr2);
      $display("---------------------------------");
      arr1 = {1,2};
      arr2 = {3,4};
      median(arr1,arr2);
      $display("---------------------------------");
    end
endmodule
