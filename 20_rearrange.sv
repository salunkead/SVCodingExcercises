//////Rearrange an array in maximum minimum form 
/*
Q.Given a sorted array of positive integers, rearrange the array alternately 
   i.e first element should be a maximum value, at second position minimum value, at third position second max, at fourth position second min, and so on.
   Examples: 

    Input: arr[] = {1, 2, 3, 4, 5, 6, 7} 
    Output: arr[] = {7, 1, 6, 2, 5, 3, 4}

    Input: arr[] = {1, 2, 3, 4, 5, 6} 
    Output: arr[] = {6, 1, 5, 2, 4, 3} 
*/

/////Solution
module test;
  int a[];
  function void Rearrange(int num[]);
    automatic int q[$],j=0,k=0;
    q=num;
    for(int i=0;i<$size(num);i++)
      begin
        if(i%2==0)
          begin
            num[i]=q[($size(num)-1)-j];
            j++;
          end
        else
          begin
            num[i]=q[k];
            k++;
          end
      end
    $display("num=%p",num);
  endfunction
  
  initial
    begin
      a=new[7];
      a='{1, 2, 3, 4, 5, 6, 7};
      Rearrange(a);
      $display("------------------------");
      a=new[6];
      a='{1, 2, 3, 4, 5, 6};
      Rearrange(a);
    end
endmodule
