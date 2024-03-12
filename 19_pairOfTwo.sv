///Pair with largest sum which is less than K in the array
/*
Q.Given an array arr of size N and an integer K. The task is to find the pair of integers such that their sum is maximum and but less than K
Example:-
Input : arr = {30, 20, 50} , K = 70 
Output : 30, 20 
30 + 20 = 50, which is the maximum possible sum which is less than K
 
Input : arr = {5, 20, 110, 100, 10}, K = 85 
Output : 20, 10 
*/

////Solution
module test;
  int a[],k;
  function void max_sum(int num[],int k);
    int pairs[2];
    num.sort();
    
    begin:block
    for(int i=$size(num)-1;i>=0;i--)
      begin
        for(int j=i-1;j>=0;j--)
          begin
            if((num[i]+num[j])<k)
              begin
                pairs[0]=num[i];
                pairs[1]=num[j];
                disable block;
              end
          end
      end
    end
    $display("The Pairs Are As Follows....!");
    $display("%p",pairs);
  endfunction
  
  initial
    begin
      a=new[3];
      a='{30, 20, 50};
      k=70;
      max_sum(a,k);
      $display("---------------------------------");
      a='{5, 20, 110, 100, 10};
      k= 85;
      max_sum(a,k);
    end
endmodule
