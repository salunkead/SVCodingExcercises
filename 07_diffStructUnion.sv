//Difference Between Structure And Union

module test;
  struct{
    bit [3:0]a;
    byte b;
  }st;
  
  union{
    bit [3:0]a;
    byte b;
  }un;
  
  initial
    begin
      $display("No. of bits of memory allocated to structure is : %0d",$bits(st));  ///4+8=12 bits of Simulation Memory
      $display("No. of bits of memory allocated to union is : %0d",$bits(un));      //max(4,8)=8 bits of Simulation Memory
    end
endmodule
