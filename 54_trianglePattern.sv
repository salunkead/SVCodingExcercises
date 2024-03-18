/*

Draw a Triangle using *
*
**
***
****
*****

*/

//Solution
module test;
  function void print_pattern;
    for(int i=0;i<5;i++)
      begin
        for(int j=0;j<=i;j++)
          begin
            $write("*");
            if(i==j)
              $display();
          end
      end
  endfunction
  
  initial
    begin
      print_pattern;
    end
endmodule
