//////Make a Distinct Digit Array
/*
Q.Given an array nums of positive integers of size N. Find all distinct digits present in nums.
Example 1:

Input: nums = [131, 11, 48]
Output: 1 3 4 8
Explanation: 1, 3, 4, and 8 are only distinct
digits that can be extracted from the numbers
of the array.

Example 2:

Input: nums = [111, 222, 333, 4444, 666]
Output: 1 2 3 4 6
Explanation: 1, 2, 3, 4, and 6 are only distinct
digits that can be extracted from the numbers
of the array.

*/

//Solution
module test;
  int arr[];
  
  function void common_digits(int a[]);
    int digits[$];
    for(int i=0;i<$size(a);i++)
      begin
        if(a[i]<99)
          begin
            digits.push_back(a[i]%10);
            digits.push_back((a[i]/10)%10);
          end
        if(a[i]>=100 && a[i]<999)
          begin
            digits.push_back(a[i]%10);
            digits.push_back((a[i]/10)%10);
            digits.push_back((a[i]/100)%10);
          end
        if(a[i]>=1000 && a[i]<9999)
          begin
            digits.push_back(a[i]%10);
            digits.push_back((a[i]/10)%10);
            digits.push_back((a[i]/100)%10);
            digits.push_back((a[i]/1000)%10);
          end
      end
    $display("%p",digits.unique());
    digits.delete;
  endfunction
  
  initial
    begin
      arr=new[3];
      arr='{131, 11, 48};
      common_digits(arr);
      $display("---------------------");
      arr=new[5];
      arr='{111, 222, 333, 4444, 666};
      common_digits(arr);
    end
endmodule
