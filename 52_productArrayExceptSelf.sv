//////Product of Array Except Self
/*
Q.Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i]
Example 1:

Input: nums = [1,2,3,4]
Output: [24,12,8,6]

Example 2:

Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]

*/

//Solution
module test;
  int arr[];
  function void productExceptSelf(int a[]);
    automatic int result[],p=1;
    result=new[$size(a)];
    for(int i=0;i<$size(result);i++)
      begin
        for(int j=0;j<$size(a);j++)
          begin
            if(a[i]!=a[j])
              begin
                p=p*a[j];
              end
          end
        result[i]=p;
        p=1;
      end
    $display("result=%p",result);
  endfunction
  
  initial
    begin
      arr=new[4];
      arr='{1,2,3,4};
      productExceptSelf(arr);
      $display("--------------");
      arr=new[5];
      arr='{-1,1,0,-3,3};
      productExceptSelf(arr);
      $display("--------------");
    end
endmodule
