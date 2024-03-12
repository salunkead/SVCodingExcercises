////Find Second largest element in an array
/*
Q.Given an array of integers, our task is to write a program that efficiently finds the second-largest element present in the array.
    Example:-
    Input: arr[] = {12, 35, 1, 10, 34, 1}
    Output: The second largest element is 34.
    Explanation: The largest element of the array is 35 and the second largest element is 34

    Input: arr[] = {10, 5, 10}
    Output: The second largest element is 5.
    Explanation: The largest element of the array is 10 and the second largest element is 5
    poster

    Input: arr[] = {10, 10, 10}
    Output: The second largest does not exist.
    Explanation: Largest element of the array is 10 there is no second largest element

*/

///Solution
module test;
  int a[];
  function void secondLargest(int num[]);
    automatic int temp=0,q[$];
    for(int i=0;i<$size(num);i++)
      begin
        for(int j=i+1;j<$size(num);j++)
          begin
            if(num[i]<num[j])
              begin
                temp=num[i];
                num[i]=num[j];
                num[j]=temp;
              end
          end
      end
    q=num;
    for(int i=0;i<$size(q);i++)
      begin
        for(int j=0;j<$size(q);j++)
          begin
            if(i!=j && q[i]==q[j])
              q.delete(j);
          end
      end
    if(q.size>1)
      begin
        $display("The Second Largest Element in array is : %0d",q[1]);
      end
    else
      begin
        $display("The Second Largest Element Does Not Exists");
      end
    q.delete;
  endfunction
  
  initial
    begin
      a=new[6];
      a='{12, 35, 1, 10, 34, 1};
      secondLargest(a);
      $display("-----------------------");
      a=new[3];
      a='{10, 5, 10};
      secondLargest(a);
      $display("-----------------------");
      a=new[3];
      a='{10,10,10};
      secondLargest(a);
      $display("-----------------------");
    end
endmodule
