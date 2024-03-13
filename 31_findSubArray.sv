////Find Subarray with given sum
/*
Q.Given an array arr[] of non-negative integers and an integer sum, find a subarray that adds to a given sum.
    Input: arr[] = {1, 4, 20, 3, 10, 5}, sum = 33
    Output: Sum found between indexes 2 and 4
    Explanation: Sum of elements between indices 2 and 4 is 20 + 3 + 10 = 33
    poster

    Input: arr[] = {1, 4, 0, 0, 3, 10, 5}, sum = 7
    Output: Sum found between indexes 1 and 4
    Explanation: Sum of elements between indices 1 and 4 is 4 + 0 + 0 + 3 = 7

    Input: arr[] = {1, 4}, sum = 0
    Output: No subarray found
    Explanation: There is no subarray with 0 sum

*/

////Solution
module test;
  int a[];
  
  function void findSubArray(int a[],int add);
    automatic int q[$],j=0,first,last,r[$];
    while(j<$size(a))
        begin
          q.push_back(a[j]);
          for(int i=j+1;i<$size(a);i++)
            begin
              if(q.sum<add)
                begin
                  q.push_back(a[i]);
                  if(q.sum>add)
                    begin
                      q.delete;
                      break;
                    end
                end
            end
          if(q.sum==add)
            begin
              $display("%p",q);
              r=a.find_index with(item==q[0]);
              first=r[0];
              r=a.find_index with (item==q[$size(q)-1]);
              last=r[0];
              $display("Sum found between indexes %0d and %0d",first,last);
              break;
            end
          else
            begin
              q.delete;
            end
          if(j==$size(a)-1)
            begin
              $display("No subarray found.....!");
            end
          j++;
        end
    r.delete;
    j=0;
  endfunction
  
  initial
    begin
      a=new[6];
      a='{1, 4, 20, 3, 10, 5};
      findSubArray(a,33);
      $display("----------------------------------");
      a=new[7];
      a='{1, 4, 0, 0, 3, 10, 5};
      findSubArray(a,7);
      $display("----------------------------------");
      a=new[3];
      a='{1, 4};
      findSubArray(a,0);
      $display("----------------------------------");
    end
endmodule
