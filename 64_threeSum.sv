////3Sum
/*
Q.Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.

Example 1:

Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]
Explanation: 
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
The distinct triplets are [-1,0,1] and [-1,-1,2].
Notice that the order of the output and the order of the triplets does not matter.

Example 2:

Input: nums = [0,1,1]
Output: []
Explanation: The only possible triplet does not sum up to 0.

Example 3:

Input: nums = [0,0,0]
Output: [[0,0,0]]
Explanation: The only possible triplet sums up to 0.

*/

/////Solution
module test;
  int arr[];
  function void threeSum(int a[]);
    automatic int q[$];
    begin:block
    for(int i=0;i<$size(a);i=i+3)
      begin
        q.push_back(a[i]);
        for(int j=i+1;j<=i+2;j++)
          begin
            q.push_back(a[j]);
            if(j==i+2)
              begin
                if(q.sum==0)
                  begin
                    disable block;
                  end
                else
                  begin
                    q.delete;
                  end
              end
          end
      end
    end
    $display("%p",q);
  endfunction
  
  initial
    begin
      arr=new[6];
      arr='{-1,0,1,2,-1,-4};
      threeSum(arr);
      $display("-----------------------");
      arr=new[3];
      arr='{0,1,1};
      threeSum(arr);
      $display("-----------------------");
      arr=new[3];
      arr='{0,0,0};
      threeSum(arr);
      $display("-----------------------");
    end
endmodule
