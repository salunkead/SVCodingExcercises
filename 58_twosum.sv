////Two Sum
/*
Q.Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

 

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]

Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]

*/
///Solution
module test;
  int arr[];
  function void twoSum(int a[],int target);
    automatic int q[$];
    begin:block
    for(int i=0;i<$size(a);i++)
      begin
        for(int j=i+1;j<$size(a);j++)
          begin
            if(target==a[i]+a[j])
              begin
                $display("i=%0d j=%0d",i,j);
                disable block;
              end
          end
      end
    end
  endfunction
  
  initial
    begin
      arr=new[4];
      arr='{2,7,11,15};
      twoSum(arr,9);
      $display("-----------------------");
      arr=new[3];
      arr='{3,2,4};
      twoSum(arr,6);
      $display("-----------------------");
      arr=new[2];
      arr='{3,3};
      twoSum(arr,6);
    end
endmodule
