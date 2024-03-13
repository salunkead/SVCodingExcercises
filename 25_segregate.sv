//Segregate even and odd numbers
/*
Q.Given an array arr[] of integers, segregate even and odd numbers in the array such that all the even numbers should be present first, and then the odd numbers.
Examples:  

    Input: arr[] = {7, 2, 9, 4, 6, 1, 3, 8, 5}
    Output: 2 4 6 8 7 9 1 3 5

    Input: arr[] = {1, 3, 2, 4, 7, 6, 9, 10}
    Output:  2 4 6 10 7 1 9 3
*/

///Solution
module test;
  int arr[];
  function void segregate(int a[]);
    automatic int even[$],odd[$],k=0;
    for(int i=0;i<$size(a);i++)
      begin
        if(a[i]%2==0)
          begin
            even.push_back(a[i]);
          end
        else
          begin
            odd.push_back(a[i]);
          end
      end
    for(int i=0;i<$size(a);i++)
      begin
        if(i<$size(even))
          a[i]=even[i];
        else
          begin
            a[i]=odd[k];
            k++;
          end
      end
    $display("Sorted Array is : %p",a);
    even.delete;
    odd.delete;
    k=0;
  endfunction
  
  initial
    begin
      arr=new[9];
      arr='{7, 2, 9, 4, 6, 1, 3, 8, 5};
      segregate(arr);
      $display("-------------------------");
      arr=new[8];
      arr='{1, 3, 2, 4, 7, 6, 9, 10};
      segregate(arr);
    end
endmodule
