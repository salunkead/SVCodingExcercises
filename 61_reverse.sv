///Reverse Integer
/*
Q.Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

Example 1:

Input: x = 123
Output: 321

Example 2:

Input: x = -123
Output: -321

Example 3:

Input: x = 120
Output: 21
*/

//Solution
module test;
  int r;
  function void reverse(int n);
    if(n inside{[10:99],[-99:-10]})
      begin
        if(n>0)
          r=(n%10)*10+(n/10)%10;
        else
          begin
            r=-(n%10)*10-(n/10)%10;
            r=r-2*r;
          end
      end
    if(n inside{[100:999],[-999:-100]})
      begin
        if(n>0)
          r=(n%10)*100+((n/10)%10)*10+((n/100)%10);
        else
          begin
            r=-1*((n%10)*100)-1*(((n/10)%10)*10)-1*(((n/100)%10)*1);
            r=r-2*r;
          end
      end
    if(n inside{[1000:9999],[-9999:-1000]})
      begin
        if(n>0)
          r=(n%10)*1000+((n/10)%10)*100+((n/100)%10)*10+((n/1000)%10);
        else
          begin
            r=-(n%10)*1000-((n/10)%10)*100-((n/100)%10)*10-((n/1000)%10);
            r=r-2*r;
          end
      end
    $display("Revered Integer is : r= %0d",r);
  endfunction
  
  initial
    begin
      reverse(123);
      $display("---------------------------------");
      reverse(120);
      $display("---------------------------------");
      reverse(-235);
      $display("---------------------------------");
      reverse(-1456);
      $display("---------------------------------");
      reverse(-95);
      $display("---------------------------------");
    end
endmodule
