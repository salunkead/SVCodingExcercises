/////Count set bits in an integer
/*
Q.Write an efficient program to count the number of 1s in the binary representation of an integer.
Examples : 

    Input : n = 6
    Output : 2
    Binary representation of 6 is 110 and has 2 set bits

    Input : n = 13
    Output : 3
    Binary representation of 13 is 1101 and has 3 set bits

*/

//Solution
module test;
  function void setBits(int n);
    automatic int q[$],r[$];
    while(1)
      begin
        q.push_back(n%2);
        n=n/2;
        if(n==0)
          break;
      end
    r=q.find with (item==1);
    $display("Total set bits are : n=%0d",r.size);
  endfunction
  
  initial
    begin
      setBits(6);
      $display("-----------------------");
      setBits(8);
    end
endmodule
