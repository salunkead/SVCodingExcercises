///If The No. of One's In Variable Is Greater Than No. of Zero's Then The Output Equals To One

module majority_ones(input [15:0]data,output reg y);
  int c1,c0;
  always@(*)
    begin
      for(int i=0;i<16;i++)
        begin
          if(data[i]==1)
            c1=c1+1;
          else
            c0=c0+1;
        end
      if(c1>c0)
        begin
          y=1;
          c1=0;
          c0=0;
        end
      else
        begin
          y=0;
          c1=0;
          c0=0;
        end
    end
endmodule


//Testbench
module test;
  reg [15:0]data;
  reg y;
  majority_ones dut(data,y);
  
  initial
    begin
      repeat(20)
        begin
          data=$urandom;
          $display("ones=%0d zero=%0d at t=%0t",$countones(data),16-$countones(data),$time);
          #20;
        end
    end
  
  initial
    begin
      $dumpfile("d.vcd");
      $dumpvars;
    end
  
endmodule
