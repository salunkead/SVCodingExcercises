/////Construct an array from its pair-sum array
/*
Q.Given a pair-sum array and size of the original array (n), construct the original array.
A pair-sum array for an array is the array that contains sum of all pairs in ordered form. For example pair-sum array for arr[] = {6, 8, 3, 4} is {14, 9, 10, 11, 12, 7}.
In general, pair-sum array for arr[0..n-1] is {arr[0]+arr[1], arr[0]+arr[2], ……., arr[1]+arr[2], arr[1]+arr[3], ……., arr[2]+arr[3], arr[2]+arr[4], …., arr[n-2]+arr[n-1}.
*/

///Solution
module test;
  int arr[];
  function void pair_sum(int a[]);
    automatic int q[$];
    for(int i=0;i<$size(a);i++)
      begin
        for(int j=i+1;j<$size(a);j++)
          begin
            q.push_back(a[i]+a[j]);
          end
      end
    $display("%p",q);
  endfunction
  
  
  initial
    begin
      arr=new[4];
      arr='{6, 8, 3, 4};
      pair_sum(arr);
      $display("---------------------------");
     
    end
endmodule
