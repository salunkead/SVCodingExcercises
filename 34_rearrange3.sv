//////Rearrange positive and negative numbers 
/*
Q.An array contains both positive and negative numbers in random order. Rearrange the array elements so that positive and negative numbers are placed alternatively. 
  A number of positive and negative numbers need not be equal. If there are more positive numbers they appear at the end of the array. If there are more negative numbers, they too appear at the end of the array.

Example:

    Input: [-1, 2, -3, 4, 5, 6, -7, 8, 9]
    Output:[9, -7, 8, -3, 5, -1, 2, 4, 6]

    Input: [-1, 3, -2, -4, 7, -5]
    Output:[7, -2, 3, -5, -1, -4]
*/

//////Solution
module test;
  int arr[];
  function void rearrange(int a[]);
    automatic int k,j;
    int p[$],n[$];
    p=a.find with (item>0);
    n=a.find with (item<0);
    p.rsort;
    n.rsort;
    $display("Original Array : ");
    $display("a=%p",a);
    for(int i=0;i<$size(a);i++)
      begin
        if(i%2==0 && p.size!=0)
          begin
            a[i]=p.pop_front;
          end
        else if(i%2!=0 && n.size!=0)
          begin
            a[i]=n.pop_front;
          end
        else
          begin
            if(p.size==0)
              begin
                a[i]=n.pop_front;
              end
            if(n.size==0)
              begin
                a[i]=p.pop_front;
              end
          end
      end
    $display("Rearranged Array : ");
    $display("a=%p",a);
  endfunction
  
  initial
    begin
      arr=new[9];
      arr='{-1, 2, -3, 4, 5, 6, -7, 8, 9};
      rearrange(arr);
      $display("--------------------------------");
      arr=new[6];
      arr='{-1, 3, -2, -4, 7, -5};
      rearrange(arr);
      $display("--------------------------------");
    end
endmodule
