/////Digital Lock - unlocks when it gets sequence -> 6'b101100

module digital_lock(
output reg unlock,input b_in,clear,clk);
  reg [5:0]seq;
  int c;
  enum bit[1:0]{idle,load,check}state;
  always@(negedge clk or negedge clear)
    begin
      if(!clear)
        begin
          unlock<=0;
          state<=idle;
        end
      else
        begin
          case(state)
            idle:
              begin
                unlock<=0;
                state<=load;
              end
            load:
              begin
                if(c<6)
                  begin
                    seq[c]<=b_in;
                    c<=c+1;
                    state<=load;
                  end
                else
                  begin
                    c<=0;
                    state<=check;
                  end
              end
            check:
              begin
                if(seq==6'b101100)
                  begin
                    unlock<=1;
                    state<=idle;
                  end
                else
                  begin
                    unlock<=0;
                    state<=idle;
                  end
              end
            default: state<=idle;
          endcase
        end
    end
endmodule


////////////testbench
module test;
  bit b_in,clear,clk;
  logic unlock;
  reg [5:0]data;
  always #10 clk=~clk;
  digital_lock dut(unlock,b_in,clear,clk);
  task reset;
    b_in=0;
    clear=0;
    repeat(3)@(posedge clk);
    clear=1;
  endtask
  task inputs;
    data=6'b101100;
    $displayh(data);
    for(int i=0;i<6;i++)
      begin
        @(posedge clk);
        b_in=data[i];
      end
  endtask
  
  initial
    begin
      reset;
      inputs;
    end
  initial
    begin
      $dumpfile("d.vcd");
      $dumpvars(0,test.dut);
      #500 $finish;
    end
endmodule
