//// Remove Duplicates from Sorted Array II
/*
Q.Given an integer array nums sorted in non-decreasing order, remove some duplicates in-place such that each unique element appears at most twice. 
   The relative order of the elements should be kept the same.
   Example 1:

Input: nums = [1,1,1,2,2,3]
Output: 5, nums = [1,1,2,2,3,_]
Explanation: Your function should return k = 5, with the first five elements of nums being 1, 1, 2, 2 and 3 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).

Example 2:

Input: nums = [0,0,1,1,1,1,2,3,3]
Output: 7, nums = [0,0,1,1,2,3,3,_,_]
Explanation: Your function should return k = 7, with the first seven elements of nums being 0, 0, 1, 1, 2, 3 and 3 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).

*/

//Solution
module test;
  int arr[];
  function void removeDuplicates(int a[]);
    automatic int q[$],count;
    q=a;
    for(int i=0;i<$size(q);i++)
      begin
        for(int j=0;j<$size(q);j++)
          begin
            if(q[i]==q[j])
              begin
                count++;
                if(count>2)
                  begin
                    q.delete(j);
                  end
              end
          end
        count=0;
      end
    a=new[$size(q)];
    a=q;
    $display("size=%0d : arr=%p",$size(a),a);
  endfunction
  
  initial
    begin
      arr=new[6];
      arr='{1,1,1,2,2,3};
      removeDuplicates(arr);
      $display("----------------------");
      arr=new[9];
      arr='{0,0,1,1,1,1,2,3,3};
      removeDuplicates(arr);
      $display("----------------------");
      arr=new[9];
      arr='{0,0,1,1,1,1,1,3,3};
      removeDuplicates(arr);
      $display("----------------------");
      arr=new[9];
      arr='{1,1,1,1,1,1,1,1,1};
      removeDuplicates(arr);
      $display("----------------------");
    end
endmodule
