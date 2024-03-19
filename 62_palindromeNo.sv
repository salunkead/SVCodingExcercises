/////Palindrome Number
/*
Q.Given an integer x, return true if x is a
palindrome, and false otherwise.

Example 1:
Input: x = 121
Output: true
Explanation: 121 reads as 121 from left to right and from right to left.

Example 2:
Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

Example 3:
Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.

*/

//Solution
module test;
  function string isPalindrome(int n);
    automatic int a;
    if(n inside{[10:99],[-99:-10]})
        begin
          a=(n%10)*10+(n/10)%10;
          if(a==n)
            begin
              if(n>0)
                return "True";
              else
                return "False";
            end
          else
            return "False";
        end
    if(n inside{[100:999],[-999:-100]})
        begin
          a=(n%10)*100+(n/10)%10*10+(n/100)%10;
          if(a==n)
            begin
              if(n>0)
                return "True";
              else
                return "False";
            end
          else
            return "False";
        end
  endfunction
  
  initial
    begin
      $display("Is it Palindrome No. : %0s",isPalindrome(121));
      $display("Is it Palindrome No. : %0s",isPalindrome(10));
      $display("Is it Palindrome No. : %0s",isPalindrome(-121));
    end
endmodule
