//Check if pair with given Sum exists in Array (Two Sum)
/*
Example:- 
Input: arr[] = {0, -1, 2, -3, 1}, x= -2
Output: Yes
Explanation: If we calculate the sum of the output,1 + (-3) = -2

Input: arr[] = {1, -2, 1, 0, 5}, x = 0
Output: No
*/

///Solution
module test;
  int a[],x;
  bit ok=0;
  function automatic string check_pair(ref int a[],int x);
    int pair[2];
    for(int i=0;i<$size(a);i++)
      begin
        for(int j=0;j<$size(a);j++)
          begin
            if(i!=j)
              begin
                if(a[i]+a[j]==x)
                  begin
                    pair[0]=a[i];
                    pair[1]=a[j];
                    ok=1;
                  end
              end
          end
      end
    $display("%p",pair);
    if(ok)
      begin
        ok=0;
        return "Yes";
      end
    else
      return "No";
  endfunction
  
  initial
    begin
      a=new[5];
      a='{0, -1, 2, -3, 1};
      x= -2;
      $display("Is the sum exists : %s",check_pair(a,x));
      $display("----------------------------------");
      a='{1, -2, 1, 0, 5};
      x = 2;
      $display("Is the sum exists : %s",check_pair(a,x));
      $display("----------------------------------");
      a='{1, -2, 1, 0, 5};
      x = 0;
      $display("Is the sum exists : %s",check_pair(a,x));
      $display("----------------------------------");
    end
endmodule
