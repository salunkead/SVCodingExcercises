//////Reorder an array according to given indexes
/*
Q.Given two integer arrays of the same size, “arr[]” and “index[]”, reorder elements in “arr[]” according to the given index array.

Example: 

    Input:  arr[]   = [10, 11, 12];
                index[] = [1, 0, 2];
    Output: arr[]   = [11, 10, 12]
               index[] = [0,  1,  2] 

    Input:  arr[]   = [50, 40, 70, 60, 90]
              index[] = [3,  0,  4,  1,  2]
    Output: arr[]   = [40, 60, 90, 50, 70]
              index[] = [0,  1,  2,  3,   4]
*/

//Solution
module test;
  int arr[],index[];
  function void reorder(int a[],int index[]);
    int q[$];
    q=a;
    for(int i=0;i<$size(index);i++)
      begin
        a[index[i]]=q[i];
      end
    $display("%p",a);
    q.delete;
  endfunction
  
  initial
    begin
      arr=new[3];
      index=new[3];
      arr='{10, 11, 12};
      index='{1, 0, 2};
      reorder(arr,index);
      $display("--------------------------------");
      arr=new[5];
      index=new[5];
      arr='{50, 40, 70, 60, 90};
      index='{3,  0,  4,  1,  2};
      reorder(arr,index);
      $display("--------------------------------");
    end
endmodule
