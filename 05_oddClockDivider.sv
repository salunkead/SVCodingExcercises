///Odd Clock Divider

module odd_clockDivider(clk_in,clk_out);
  input clk_in; 
  output reg clk_out;
  parameter n=5;
  int count;
  always@(edge clk_in)
    begin
      if(count<(2*n+1)/2)
        begin
          clk_out<=1;
          count<=count+1;
        end
      else
        begin
          clk_out<=0;
          count<=count+1;
          if(count==2*n-1)
            count<=0;
        end
    end
endmodule

///Tb
module test;
  bit clk_in;
  bit clk_out;
  always #5 clk_in=~clk_in;
  odd_clockDivider #(5)dut(clk_in,clk_out);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,test.dut);
      #200 $finish;
    end
endmodule
