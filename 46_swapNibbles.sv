////Swap two nibbles in a byte
/*
Q.A nibble is a four-bit aggregation or half an octet. There are two nibbles in a byte. 
  Given a byte, swap the two nibbles in it. For example, 100 is represented as 01100100 in a byte (or 8 bits). 
  The two nibbles are (0110) and (0100). If we swap the two nibbles, we get 01000110 which is 70 in decimal.
*/

///Solution
module test;
  function void swapNibble(bit[1:0][3:0]a);
    automatic bit[3:0]temp;
    temp=a[0];
    a[0]=a[1];
    a[1]=temp;
    $display("swaped Number is : %0d",a);
  endfunction
  
  initial
    begin
      swapNibble(100);
      $display("------------------");
    end
endmodule
