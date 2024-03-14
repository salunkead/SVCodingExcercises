////Range sum query 
/*
Q.We have an array arr[]. We need to find the sum of all the elements in the range L and R where 0 <= L <= R <= n-1. Consider a situation when there are many range queries.

Examples: 

Input : 3 7 2 5 8 9
        query(0, 5)
        query(3, 5)
        query(2, 4)
Output : 34
         22
         15
*/

///Solution
module test;
  int arr[];
  function void query(int first,int last,int a[]);
    automatic int sum=0;
    for(int i=first;i<=last;i++)
      begin
        sum=sum+a[i];
      end
    $display("sum of the elements in the range %0d to %0d is : %0d",first,last,sum);
    sum=0;
  endfunction
  
  initial
    begin
      arr=new[6];
      arr='{3, 7, 2, 5, 8, 9};
      query(0, 5, arr);
      query(3, 5, arr);
      query(2, 4, arr);
    end
endmodule
