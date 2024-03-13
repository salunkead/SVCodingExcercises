//////Leaders in an array
/*
Q. Write a program to print all the LEADERS in the array. An element is a leader if it is greater than all the elements to its right side.
   And the rightmost element is always a leader.

For example:

    Input: arr[] = {16, 17, 4, 3, 5, 2}, 
    Output: 17, 5, 2

    Input: arr[] = {1, 2, 3, 4, 5, 2}, 
    Output: 5, 2
*/

///Solution

module test;
  int arr[];
  
  function void array_Leaders(int a[]);
    int leaders[$];
    for(int i=0;i<$size(a)-1;i++)
      begin
        for(int j=i+1;j<$size(a);j++)
          begin
            if(a[i]<a[j])
              begin
                break;
              end
            else if(j==$size(a)-1)
              begin
                leaders.push_back(a[i]);
              end
          end
      end
    leaders.push_back(a[$size(a)-1]);
    $display("Leaders are : %p",leaders);
    leaders.delete;
  endfunction
  
  initial
    begin
      arr=new[6];
      arr='{16, 17, 4, 3, 5, 2};
      array_Leaders(arr);
      $display("-----------------------");
      arr=new[6];
      arr='{1, 2, 3, 4, 5, 2};
      array_Leaders(arr);
      $display("-----------------------");
    end
endmodule
