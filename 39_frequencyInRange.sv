///Range Queries for Frequencies of array elements
/*
Q.Given an array of n non-negative integers. The task is to find frequency of a particular element in the arbitrary range of array[]. The range is given as positions (not 0 based indexes) in array. There can be multiple queries of given type.

Examples: 

Input  : arr[] = {2, 8, 6, 9, 8, 6, 8, 2, 11};
         left = 2, right = 8, element = 8
         left = 2, right = 5, element = 6      
Output : 3
         1
The element 8 appears 3 times in arr[left-1..right-1]
The element 6 appears 1 time in arr[left-1..right-1]
*/

///Solution
module test;
  int arr[];
  function void findFrequency(int r1,int r2,int element,int a[]);
    automatic int count=0;
    for(int i=r1-1;i<=r2-1;i++)
      begin
        if(element==a[i])
          count++;
      end
    $display("%0d element has occured %0d times",element,count);
    count=0;
  endfunction
  
  initial
    begin
      arr=new[9];
      arr='{2, 8, 6, 9, 8, 6, 8, 2, 11};
      findFrequency(2,8,8,arr);
      $display("--------------------------");
      findFrequency(2,5,6,arr);
    end
endmodule
