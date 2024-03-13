/////Print all Distinct ( Unique ) Elements in given Array
/*
Q.Given an integer array, print all distinct elements in an array. 
  The given array may contain duplicates and the output should print every element only once. The given array is not sorted.

  Examples: 

    Input: arr[] = {12, 10, 9, 45, 2, 10, 10, 45}
    Output: 12, 10, 9, 45, 2

    Input: arr[] = {1, 2, 3, 4, 5}
    Output: 1, 2, 3, 4, 5
    poster

    Input: arr[] = {1, 1, 1, 1, 1}
    Output: 1

*/

///Solution
module test;
  int arr[];
  function void printDistinct(int a[]);
    int q[$];
    q=a;
    repeat($size(a))
      begin
        for(int i=0;i<$size(q);i++)
          begin
            for(int j=i+1;j<$size(q);j++)
              begin
                if(q[i]==q[j])
                  begin
                    q.delete(j);
                  end
              end
          end
      end
    a=new[$size(q)];
    a=q;
    $display("%p",a);
  endfunction
  
  initial
    begin
      arr=new[8];
      arr='{12, 10, 9, 45, 2, 10, 10, 45};
      printDistinct(arr);
      $display("----------------------------");
      arr=new[5];
      arr='{1, 2, 3, 4, 5};
      printDistinct(arr);
       $display("----------------------------");
      arr=new[5];
      arr='{1, 1, 1, 1, 1};
      printDistinct(arr);
    end
endmodule
