/////Majority Element
/*
Q.Find the majority element in the array. 
  A majority element in an array A[] of size n is an element that appears more than n/2 times (and hence there is at most one such element). 
  Examples : 

    Input : A[]={3, 3, 4, 2, 4, 4, 2, 4, 4}
    Output : 4
    Explanation: The frequency of 4 is 5 which is greater than the half of the size of the array size. 

    Input : A[] = {3, 3, 4, 2, 4, 4, 2, 4}
    Output : No Majority Element
    Explanation: There is no element whose frequency is greater than the half of the size of the array size.
*/

///Solution
module test;
  int a[];
  
  function void majorityElement(int a[]);
    automatic int c=0;
    int r[int],res[$];
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
    res=r.max();
    if(res[0]>($size(a)/2))
      begin
        $display("%p",r);
        $display("Element %p occured more than the half of the size of array",r.find_index with (item==res[0]));
      end
    else
      begin
        $display("No Majority Element................!");
      end
    r.delete;
    res.delete;
  endfunction
  
  initial
    begin
      a=new[9];
      a='{3, 3, 4, 2, 4, 4, 2, 4, 4};
      majorityElement(a);
      $display("----------------------------------");
      a=new[8];
      a='{3, 3, 4, 2, 4, 4, 2, 4};
      majorityElement(a);
      $display("----------------------------------");
    end
endmodule
