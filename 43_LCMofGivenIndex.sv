//Range LCM Queries
/*
Q.Given an array arr[] of integers of size N and an array of Q queries, query[], where each query is of type [L, R] denoting the range from index L to index R, the task is to find the LCM of all the numbers of the range for all the queries.

Examples: 

    Input: arr[] = {5, 7, 5, 2, 10, 12 ,11, 17, 14, 1, 44}
    query[] = {{2, 5}, {5, 10}, {0, 10}}
    Output: 60,15708, 78540
    Explanation: In the first query LCM(5, 2, 10, 12) = 60 
    In the second query LCM(12, 11, 17, 14, 1, 44) = 15708
    In the last query LCM(5, 7, 5, 2, 10, 12, 11, 17, 14, 1, 44) = 78540
*/

//Solution
module test;
  int arr[];
  
  function void findLCM(int a[],int s,int e);
    automatic int q[$],max[$],count;
    for(int i=s;i<=e;i++)
      begin
        q.push_back(a[i]);
      end
    max=q.max();
    begin:loop
      for(int i=max[0];i<=100000;i++)
        begin
          for(int j=0;j<$size(q);j++)
            begin
              if(i%q[j]==0)
                begin
                  count++;
                  if(count==$size(q) && j==$size(q)-1)
                    begin
                      $display("L.C.M is : %d",i);
                      disable loop;
                    end
                end
            end
          count=0;
        end
    end
  endfunction
  
  initial
    begin
      arr=new[11];
      arr='{5, 7, 5, 2, 10, 12 ,11, 17, 14, 1, 44};
      findLCM(arr,2,5);
      $display("-----------------------");
      findLCM(arr,5,10);
      $display("-----------------------");
      findLCM(arr,0,10);
      $display("-----------------------");
      
    end
endmodule
