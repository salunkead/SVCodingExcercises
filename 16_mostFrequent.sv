///Most frequent element in an array
/*
Q.Given an array, find the most frequent element in it. If there are multiple elements that appear a maximum number of times, print any one of them.
 Input : arr[] = {1, 3, 2, 1, 4, 1}
Output : 1
Explanation: 1 appears three times in array which is maximum frequency.

Input : arr[] = {10, 20, 10, 20, 30, 20, 20}
Output : 20
*/

//Solution
module test;
  int a[];
  int find[int];
  function automatic void max_occurrence(ref int a[]);
    int c=0,num,q[$],max;
    for(int i=0;i<$size(a);i++)
      begin
        num=a[i];
        for(int j=0;j<$size(a);j++)
          begin
            if(num==a[j])
              c++;
          end
        find[num]=c;
        c=0;
      end
    q=find.max();
    max=q[0];
    foreach(find[i])
      begin
        if(find[i]==max)
          begin
            max=i;
            break;
          end
      end
    $display("The Element of An Array Occured Maximum Times Is : %0d",max);
  endfunction
  
  initial
    begin
      a=new[5];
      a='{1, 3, 2, 1, 4, 1};
      max_occurrence(a);
      $display("----------------------------------");
      a='{10, 20, 10, 20, 30, 20, 20};
      max_occurrence(a);
    end
endmodule
