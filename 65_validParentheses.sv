///Valid Parentheses
/*
Q.Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

    Open brackets must be closed by the same type of brackets.
    Open brackets must be closed in the correct order.
    Every close bracket has a corresponding open bracket of the same type.

Example 1:

Input: s = "()"
Output: true

Example 2:

Input: s = "()[]{}"
Output: true

Example 3:

Input: s = "(]"
Output: false

*/

/////Solution
module test;
  function void validParenthese(string p);
    automatic int c[string],count,c1;
    for(int i=0;i<$size(p);i++)
      begin
        for(int j=0;j<$size(p);j++)
          begin
            if(p[i]==p[j])
              begin
                count++;
              end
          end
        c[p[i]]=count;
        count=0;
      end
    $display("%p",c);
    foreach(c[i])
      begin
        if(i=="(" && c[i]==c[")"])
          begin
            c1++;
          end
        else if(i=="[" && c[i]==c["]"])
          begin
            c1++;
          end
        else if(i=="{" && c[i]==c["}"])
          begin
            c1++;
          end
      end
    if(p.len/2==c1)
      begin
        $display("valid Parenthese..!");
      end
    else
      begin
        $display("Invalid Parenthese...!");
      end
  endfunction
  
  
  initial
    begin
      validParenthese("()");
      $display("------------------");
      validParenthese("()[]{}");
      $display("------------------");
      validParenthese("(]");
    end
endmodule
