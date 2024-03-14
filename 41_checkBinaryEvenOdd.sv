////Check in binary array the number represented by a subarray is odd or even
/*
Q.Given an array such that all its terms is either 0 or 1.You need to tell the number represented by a subarray a[l..r] is odd or even

Examples : 

Input : arr = {1, 1, 0, 1}
        l = 1, r = 3
Output : odd
        number represented by arr[l...r] is 
        101 which 5 in decimal form which is 
        odd

Input :  arr = {1, 1, 1, 1}
         l = 0, r = 3
Output : odd
*/

//Solution
module test;
  int arr[];
  
  function void checkEvenOdd(int a[],int s,int e);
    automatic int pow=0,num=0;
    for(int i=e;i>=s;i--)
      begin
        num=num+a[i]*(2**pow);
        pow++;
      end
    if(num%2==0)
      $display("EVEN...!");
    else
      $display("ODD...@");
  endfunction
  
  initial
    begin
      arr=new[4];
      arr='{1, 1, 0, 1};
      checkEvenOdd(arr,1,3);
      $display("-----------------------");
      arr=new[4];
      arr='{1, 1, 1, 1};
      checkEvenOdd(arr,0,3);
      $display("-----------------------");
      arr=new[4];
      arr='{1,0,0,0};
      checkEvenOdd(arr,0,3);
      $display("-----------------------");
    end
endmodule
