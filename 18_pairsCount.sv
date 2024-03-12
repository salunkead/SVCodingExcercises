//Count of equal value pairs from given two Arrays such that a[i] equals b[j]
/*
Q. Given two arrays a[] and b[] of length N and M respectively, sorted in non-decreasing order. The task is to find the number of pairs (i, j) such that, a[i] equals b[j].
Example:- 
Input: a[] = {1, 1, 3, 3, 3, 5, 8, 8}, b[] = {1, 3, 3, 4, 5, 5, 5}
Output: 11
Explanation: Following are the 11 pairs with given condition The 11 pairs are {{1, 1}, {1, 1}, {3, 3}, {3, 3}, {3, 3}, {3, 3}, {3, 3}, {3, 3}, {5, 5}, {5, 5}, {5, 5}} . 

Input: a[] = {1, 2, 3, 4}, b[] = {1, 1, 2}
Output: 3
*/

//Solution
module test;
  int a[],b[];
  function int find_pairs(int a[],int b[]);
    automatic int count=0;
    for(int i=0;i<$size(a);i++)
      begin
        for(int j=0;j<$size(b);j++)
          begin
            if(a[i]==b[j])
              begin
                count++;
              end
          end
      end
    return count;
  endfunction
  
  initial
    begin
      a=new[8];
      b=new[7];
      a='{1, 1, 3, 3, 3, 5, 8, 8};
      b='{1, 3, 3, 4, 5, 5, 5};
      $display("No. Of Pairs are : %0d",find_pairs(a,b));
      a=new[4];
      b=new[3];
      a='{1, 2, 3, 4};
      b='{1, 1, 2};
      $display("No. Of Pairs are : %0d",find_pairs(a,b));
    end
endmodule
