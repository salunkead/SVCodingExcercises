/////GCDs of given index ranges in an Array
/*
Q.Given an array arr[] of size N and Q queries of type {qs, qe} where qs and qe denote the starting and ending index of the query, the task is to find the GCD of all the numbers in the range.

Examples:

    Input: arr[] = {2, 3, 60, 90, 50};
    Index Ranges: {1, 3}, {2, 4}, {0, 2}
    Output: GCDs of given ranges are 3, 10, 1
    Explanation: Elements in the range [1, 3] are {3, 60, 90}.
    The GCD of the numbers is 3.
    Elements in the range [2, 4] are {60, 90, 50}.
    The GCD of the numbers is 10.
    Elements in the range [0, 2] are {2, 3, 60}.
    The GCD of the numbers is 1 as 2 and 3 are co-prime.

*/

///Solution
module test;
  int arr[];
  
  function void findGCD(int a[],int s,int e);
    automatic int q[$],min[$],diviser[$],count;
    for(int i=s;i<=e;i++)
      begin
        q.push_back(a[i]);
      end
    min=q.min();
    for(int i=1;i<=min[0];i++)
      begin
        for(int j=0;j<$size(q);j++)
          begin
            if(q[j]%i==0)
              begin
                count++;
                if(count==$size(q) && j==$size(q)-1)
                  diviser.push_back(i);
              end
          end
        count=0;
      end
    $display("GCD is : %0p",diviser.max);
  endfunction
  
  initial
    begin
      arr=new[4];
      arr='{2, 3, 60, 90, 50};
      findGCD(arr,1,3);
      $display("-----------------------");
      findGCD(arr,2,4);
      $display("-----------------------");
      findGCD(arr,0,2);
    end
endmodule
