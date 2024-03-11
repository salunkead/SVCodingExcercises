//4 bit up counter with max count decrement by one after each count completion
////when a counter reach it's upper limit then the total count value will decrement by one
///Example - 4 bit up counter --> first time - it will count upto 15,second time - it will count upto 14, third time - 13,4th time - 12 so on

module decrementing_counter(input clk,rst,output reg [3:0]count);
  enum bit[1:0]{idle,counter,dcr}state;
  reg [3:0]temp;
  always@(posedge clk)
    begin
      if(rst)
        begin
          state<=idle;
          count<=0;
          temp<=16;
        end
      else
        begin
          case(state)
            idle:
              begin
                temp<=16;
                state<=counter;
              end
            counter:
              begin
                if(count<temp)
                  begin
                    count<=count+1;
                    state<=counter;
                  end
                else
                  begin
                    count<=0;
                    state<=dcr;
                  end
              end
            dcr:
              begin
                temp<=temp-1;
                if(temp==1)
                  state<=idle;
                else
                  state<=counter;
              end
            default:state<=idle;
          endcase
        end
    end
endmodule

/////////////////////////
module top;
  bit clk,rst;
  logic [3:0]count;
  decrementing_counter dut(clk,rst,count);
  always #10 clk=~clk;
  
  initial
    begin
      $dumpfile("d.vcd");
      $dumpvars();
      #5000 $finish;
    end
endmodule
