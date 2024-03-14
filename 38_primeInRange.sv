/////Count Primes in Ranges
/*
Q.Given a range [L, R], we need to find the count of total numbers of prime numbers in the range [L, R] where 0 <= L <= R < 10000. 
Consider that there are a large number of queries for different ranges.

Examples: 
 

Input : Query 1 : L = 1, R = 10
        Query 2 : L = 5, R = 10
Output : 4
         2
Explanation
Primes in the range L = 1 to R = 10 are 
{2, 3, 5, 7}. Therefore for query, answer 
is 4 {2, 3, 5, 7}.
For the second query, answer is 2 {5, 7}.
*/

////Solution
module test;
  function void countPrimes(int r1,int r2);
    automatic int count=0;
    if(2 inside{[r1:r2]})
      begin
        count++;
      end
    for(int i=r1;i<=r2;i++)
      begin
        for(int j=2;j<i;j++)
          begin
            if(i%j==0)
              break;
            else if(j==i-1)
              count++;
          end
      end
    $display("total prime numbers in the range %0d to %0d is : %0d",r1,r2,count);
    count=0;
  endfunction
  
  initial
    begin
      countPrimes(1,10);
      countPrimes(5,10);
      countPrimes(1,100);
    end
endmodule
