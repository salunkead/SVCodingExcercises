////Find maximum value of Sum( i*arr[i]) with only rotations on given array allowed
/*
Q.Given an array arr[] of size N, the task is to find the maximum possible sum of i*arr[i] when the array can be rotated any number of times.

Examples :  

    Input: arr[] = {1, 20, 2, 10}
    Output: 72.We can get 72 by rotating array twice.
    {2, 10, 1, 20}
    20*3 + 1*2 + 10*1 + 2*0 = 72

    Input: arr[] = {10, 1, 2, 3, 4, 5, 6, 7, 8, 9}
    Output: 330
    We can get 330 by rotating array 9 times.
    {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    0*1 + 1*2 + 2*3 … 9*10 = 330
*/

///Solution
module test;
  int arr[];
  function int find_sum(int a[]);
    automatic int sum=0;
    for(int i=0;i<$size(a);i++)
      begin
        sum=sum+i*a[i];
      end
    return sum;
  endfunction
  
  function void rotate(int a[]);
    automatic int q[$],first;
    q.push_back(find_sum(a));
    repeat($size(a)-1)
      begin
        first=a[$size(a)-1];
        for(int i=$size(a)-1;i>0;i--)
          begin
            a[i]=a[i-1];
          end
        a[0]=first;
        q.push_back(find_sum(a));
      end
    $display("Maximum Sum Achieved Using Rotation Is : %0p",q.max);
  endfunction
  
  
  initial
    begin
      arr=new[4];
      arr='{1, 20, 2, 10};
      rotate(arr);
      $display("---------------------------");
      arr=new[10];
      arr='{10, 1, 2, 3, 4, 5, 6, 7, 8, 9};
      rotate(arr);
      $display("---------------------------");
    end
endmodule
