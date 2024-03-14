/////Difference Array | Range update query
/*
Q.Consider an array A[] of integers and following two types of queries. 

    1.update(l, r, x) : Adds x to all values from A[l] to A[r] (both inclusive).
    2.printArray() : Prints the current modified array.

Examples : 

Input : A [] { 10, 5, 20, 40 }
        update(0, 1, 10)
        printArray()
        update(1, 3, 20)
        update(2, 2, 30)
        printArray()
Output : 20 15 20 40
         20 35 70 60
Explanation : The query update(0, 1, 10) 
adds 10 to A[0] and A[1]. After update,
A[] becomes {20, 15, 20, 40}       
Query update(1, 3, 20) adds 20 to A[1],
A[2] and A[3]. After update, A[] becomes
{20, 35, 40, 60}.
Query update(2, 2, 30) adds 30 to A[2]. 
After update, A[] becomes {20, 35, 70, 60}.
*/

///Solution
module test;
  int arr[];
  function automatic void update(int first,int last,int add,ref int a[]);
    for(int i=first;i<=last;i++)
      begin
        a[i]=a[i]+add;
      end
  endfunction
  
  function void print_arr();
    $display("arr : %p",arr);
    $display("--------------------------------");
  endfunction
  
  initial
    begin
      arr=new[4];
      arr='{ 10, 5, 20, 40 };
      update(0, 1, 10,arr);
      print_arr();
      /////////////////////
      update(1, 3, 20,arr);
      print_arr();
      ////////////////
      update(2, 2, 30,arr);
      print_arr();
    end
endmodule
