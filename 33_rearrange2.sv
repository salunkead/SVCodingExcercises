//////Rearrange an array such that arr[i] = i
/*
Q.Given an array of elements of length N, ranging from 0 to N – 1. All elements may not be present in the array. 
  If the element is not present then there will be -1 present in the array.
  Rearrange the array such that A[i] = i and if i is not present, display -1 at that place.

  Input : arr = {-1, -1, 6, 1, 9, 3, 2, -1, 4, -1}
Output : [-1, 1, 2, 3, 4, -1, 6, -1, -1, 9]

Input : arr = {19, 7, 0, 3, 18, 15, 12, 6, 1, 8,
              11, 10, 9, 5, 13, 16, 2, 14, 17, 4}
Output : [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
         11, 12, 13, 14, 15, 16, 17, 18, 19]
*/

////Solution
module test;
  int arr[];
  function void rearrange(int a[]);
    int q[$],r[$];
    q=a;
    for(int i=0;i<$size(a);i++)
      begin
        r=q.find with (item==i);
        if(r.size==1)
          begin
            a[r[0]]=r[0];
          end
        else if(r.size==0)
          begin
            a[i]=-1;
          end
      end
    $display("%p",a);
  endfunction
  
  initial
    begin
      arr=new[10];
      arr='{-1, -1, 6, 1, 9, 3, 2, -1, 4, -1};
      rearrange(arr);
      $display("--------------------------------");
      arr=new[20];
      arr='{19, 7, 0, 3, 18, 15, 12, 6, 1, 8,11, 10, 9, 5, 13, 16, 2, 14, 17, 4};
      rearrange(arr);
      $display("--------------------------------");
    end
endmodule
