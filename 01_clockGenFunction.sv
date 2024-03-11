//Function to generate clock of any frequency

`timescale 1ns/1ps
module test;
  bit clk;
  real t;
  int place;
  function void calculate(real f,string st,int default_place=9);
    case(st)
      "KHz":place=3;
      "MHz":place=6;
      "GHz":place=9;
    endcase
    t=1/f;
    t=t*10**(default_place-place);
    $display("%0f",t);
  endfunction
  
  initial
    begin
      calculate(400,"MHz");
      t=t/2;
      $display("%0f",t);
      forever #t clk=~clk;
    end
  initial
    begin
      $dumpfile("dumpvars.vcd");
      $dumpvars;
      #200 $finish;
    end
endmodule
