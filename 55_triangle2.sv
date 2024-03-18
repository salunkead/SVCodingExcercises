////Triangle pattern
/*
******
 ****
  **
  *
*/

//////
module test;
  function void print_pattern(int row,int column);
    automatic int k=column;
    for(int i=0;i<=row;i++)
      begin
        repeat(i)
          begin
            $write("\t");
          end
        for(int j=i;j<=k;j++)
          begin
            $write("*\t");
            if(j==k)
              begin
                $display();
                k--;
              end
          end
      end
  endfunction
  
  initial
    begin
      print_pattern(69,36);
    end
endmodule
