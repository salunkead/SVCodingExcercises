////Reversal algorithm for Array rotation
/*
Q.Given an array arr[] of size N, the task is to rotate the array by d position to the left.

Example:-
Input:  arr[] = {1, 2, 3, 4, 5, 6, 7}, d = 2
Output: 3, 4, 5, 6, 7, 1, 2
Explanation: If the array is rotated by 1 position to the left, 
it becomes {2, 3, 4, 5, 6, 7, 1}.
When it is rotated further by 1 position,
it becomes: {3, 4, 5, 6, 7, 1, 2}

Input: arr[] = {1, 6, 7, 8}, d = 3
Output: 8, 1, 6, 7
*/

///Solution
module test;
  int arr[];
  function void rotateArray(int a[],int rotate);
    automatic int first=0;
    repeat(rotate)
      begin
        first=a[0];
        for(int i=0;i<$size(a)-1;i++)
          begin
            a[i]=a[i+1];
          end
        a[$size(a)-1]=first;
      end
    $display("a=%p",a);
  endfunction
  
  initial
    begin
      arr=new[7];
      arr='{1, 2, 3, 4, 5, 6, 7};
      rotateArray(arr,2);
      $display("----------------------------");
      arr=new[4];
      arr='{1, 6, 7, 8};
      rotateArray(arr,3);
    end
endmodule
