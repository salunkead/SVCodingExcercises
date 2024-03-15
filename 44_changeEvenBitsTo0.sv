//////Change all even bits in a number to 0
/*
Q.Given a number, change all bits at even positions to 0.

Examples: 

Input : 30
Output : 10
Binary representation of 11110. 
Bits at Even positions are highlighted. 
After making all of them 0, we get 01010

Input :  10
Output :  10
*/

/////Solution
module test;
  function void changeEvenPosition(int n);
    automatic int q[$];
    while(1)
      begin
        q.push_back(n%2);
        n=n/2;
        if(n==0)
          break;
      end

    foreach(q[i])
      begin
        if(i%2==0)
          q[i]=0;
      end
    
    n=0;
    
    for(int i=0;i<$size(q);i++)
      begin
        n=n+(q[i]*2**i);
      end
    
    $display("The Result is : n=%0d",n);
  endfunction
  
  initial
    begin
      changeEvenPosition(30);
      $display("-----------------------");
      changeEvenPosition(10);
    end
endmodule
