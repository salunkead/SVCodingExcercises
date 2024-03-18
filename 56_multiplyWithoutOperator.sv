////Multiplication of two numbers without using multiplication operator
module test;
  function void multiply(int n1,n2);
    automatic int prod;
    repeat(n1)
      begin
        prod=prod+n2;
      end
    $display("product=%0d",prod);
  endfunction
  
  initial
    begin
      multiply(52,12);
      multiply(102,56);
      multiply(45,5);
    end
endmodule
