////Queries for the product of first N factorials
/*
Q.Given Q[] queries where each query consists of an integer N, the task is to find the product of first N factorials for each of the query.
Examples: 
 

    Input: Q[] = {4, 5} 
    Output: 
    288 
    34560 
    Query 1: 1! * 2! * 3! * 4! = 1 * 2 * 6 * 24 = 288 
    Query 2: 1! * 2! * 3! * 4! * 5! = 1 * 2 * 6 * 24 * 120 = 34560
*/

//Solution
module test;
  int arr[];
  
  function int fact(int num);
    automatic int p=1;
    for(int i=1;i<=num;i++)
      begin
        p=p*i;
      end
    return p;
  endfunction
  
  function void query(int a[]);
    automatic int p=1,q[$];
    for(int i=0;i<$size(a);i++)
      begin
        for(int j=1;j<=a[i];j++)
          begin
            p=p*fact(j);
            if(j==a[i])
              begin
                q.push_back(p);
                p=1;
              end
          end
      end
    $display("%p",q);
  endfunction
  
  initial
    begin
      arr=new[2];
      arr='{4,5};
      query(arr);
      $display("-------------------");
      arr=new[3];
      arr='{5, 4, 7};
      query(arr);
    end
endmodule
