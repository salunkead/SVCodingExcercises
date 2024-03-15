////Bit Difference
/*
Q.You are given two numbers A and B. The task is to count the number of bits needed to be flipped to convert A to B.

Example 1:

Input: A = 10, B = 20
Output: 4
Explanation:
A  = 01010
B  = 10100
As we can see, the bits of A that need 
to be flipped are 01010. If we flip 
these bits, we get 10100, which is B.

Example 2:

Input: A = 20, B = 25
Output: 3
Explanation:
A  = 10100
B  = 11001
As we can see, the bits of A that need 
to be flipped are 10100. If we flip 
these bits, we get 11001, which is B.
*/

//Solution
module test;
  function void bitDifference(int a,int b);
    automatic int result,count;
    result=~(a^b);
    for(int i=0;i<$size(result);i++)
      begin
        if(result[i]==0)
          begin
            count++;
          end
      end
    $display("the bits of a that need to be flipped are : %0d",count);
  endfunction
  
  initial
    begin
      bitDifference(10,20);
      $display("------------------------");
      bitDifference(20,25);
    end
endmodule
