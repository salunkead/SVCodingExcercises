////Rearrange array such that even positioned are greater than odd
/*
Q.Given an array arr[] of N elements, sort the array according to the following relations:  

    arr[i] >= arr[i – 1], if i is even, ∀ 1 <= i < N
    arr[i] <= arr[i – 1], if i is odd, ∀ 1 <= i < N

Print the resultant array.
Example:-
Input: N = 4, arr[] = {1, 2, 2, 1}
Output: 2 1 2 1

Input: arr[] = {1, 3, 2}
Output: 3 1 2
*/

//Solution
module test;
  int a[];
  function void sortEvenOdd(int num[]);
    automatic int temp=0;
    for(int i=0;i<$size(num);i++)
      begin
        if(i!=0)
          begin
            if(i%2!=0)  ///arr[i] <= arr[i – 1], if i is odd, ∀ 1 <= i < N
              begin
                if(num[i]>num[i-1])
                  begin
                    temp=num[i];
                    num[i]=num[i-1];
                    num[i-1]=temp;
                  end
              end
            if(i%2==0)   ////arr[i] >= arr[i – 1], if i is even, ∀ 1 <= i < N
              begin
                if(num[i]<num[i-1])
                  begin
                    temp=num[i];
                    num[i]=num[i-1];
                    num[i-1]=temp;
                  end
              end
          end
      end
    $display("Sorted Array is : %p",num);
  endfunction
  
  initial
    begin
      a=new[4];
      a='{1,2,2,1};
      sortEvenOdd(a);
      $display("---------------------------");
      a=new[3];
      a = {1, 3, 2};
      sortEvenOdd(a);
    end
endmodule
