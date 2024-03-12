///Find the largest three distinct elements in an array
/*
Q.Given an array with all distinct elements, find the largest three elements.
Examples :

    Input: arr[] = {10, 4, 3, 50, 23, 90}
    Output: 90, 50, 23
    poster

    Input: arr[] = { 6, 8, 1, 9, 2, 1, 10, 10}
    Output: 10, 10, 9

*/

///Solution
module test;
  int a[];
  function void LargestThree(int num[]);
    automatic int temp=0;
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
    $display("The Largest Three Elements Are As Follows");
    $display("%p",num[0:2]);
  endfunction
  
  initial
    begin
      a=new[6];
      a='{10, 4, 3, 50, 23, 90};
      LargestThree(a);
      $display("-----------------------");
      a=new[8];
      a='{ 6, 8, 1, 9, 2, 1, 10, 10};
      LargestThree(a);
      $display("-----------------------");
    end
endmodule
