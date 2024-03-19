///Division of two numbers without using division operator

module test;
  function void divide(int dividend,divisor);
    automatic int count;
    forever
      begin
        dividend=dividend-divisor;
        count++;
        if(dividend==0)
          break;
      end
    $display("Result of division is %0d",count);
  endfunction
  
  initial
    begin
      divide(48,2);
      $display("-----------------------");
      divide(548,4);
    end
endmodule
