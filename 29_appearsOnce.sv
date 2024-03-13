////Find the element that appears once in an array where every other element appears twice
/*
Q.Given an array of integers. All numbers occur twice except one number which occurs once.
Example : 

    Input:  arr[] = {2, 3, 5, 4, 5, 3, 4}
    Output: 2 

*/

///Solution
module test;
  int arr[];
  
  function void find_single(int a[]);
    automatic int r[int],c=0;
    for(int i=0;i<$size(a);i++)
      begin
        for(int j=0;j<$size(a);j++)
          begin
            if(a[i]==a[j])
              begin
                c++;
              end
          end
        r[a[i]]=c;
        c=0;
      end
    
    foreach(r[i])
      begin
        if(r[i]==1)
          begin
            $display("Element occured only once is : %0d",i);
            break;
          end
      end
  endfunction
  
  initial
    begin
      arr=new[7];
      arr='{2, 3, 5, 4, 5, 3, 4};
      find_single(arr);
      $display("-----------------------");
      arr=new[9];
      arr='{2,2,10,10,25,25,60,85,85};
      find_single(arr);
      $display("-----------------------");
      arr=new[10];
      arr='{5,5,4,8,4,5,8,9,4,8};
      find_single(arr);
    end
endmodule
