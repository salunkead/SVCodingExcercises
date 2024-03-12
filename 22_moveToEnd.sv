////Move all zeroes to end of array
/*
Q.Given an array of random numbers, Push all the zero’s of a given array to the end of the array. For example, if the given arrays is {1, 9, 8, 4, 0, 0, 2, 7, 0, 6, 0}, 
it should be changed to {1, 9, 8, 4, 2, 7, 6, 0, 0, 0, 0}.The order of all other elements should be same.

Example: 
Input :  arr[] = {1, 2, 0, 4, 3, 0, 5, 0};
Output : arr[] = {1, 2, 4, 3, 5, 0, 0, 0};

Input : arr[]  = {1, 2, 0, 0, 0, 3, 6};
Output : arr[] = {1, 2, 3, 6, 0, 0, 0};
 
*/

///Solution
module test;
  int a[];
  function void moveToEnd(int num[]);
    int nonZero[$],zero[$];
    for(int i=0;i<$size(num);i++)
      begin
        if(num[i]!=0)
          begin
            nonZero.push_back(num[i]);
          end
        else
          begin
            zero.push_back(num[i]);
          end
      end
    for(int i=0;i<$size(num);i++)
      begin
        if(i<$size(nonZero))
          begin
            num[i]=nonZero[i];
          end
        else
          num[i]=zero[i];
      end
    $display("num=%p",num);
    nonZero.delete;
    zero.delete;
  endfunction
  
  initial
    begin
      a=new[11];
      a='{1, 9, 8, 4, 0, 0, 2, 7, 0, 6, 0};
      moveToEnd(a);
      $display("-----------------------------------");
      a=new[8];
      a='{1, 2, 0, 4, 3, 0, 5, 0};
      moveToEnd(a);
      $display("-----------------------------------");
      a=new[7];
      a='{1, 2, 0, 0, 0, 3, 6};
      moveToEnd(a);
      $display("-----------------------------------");
    end
endmodule
