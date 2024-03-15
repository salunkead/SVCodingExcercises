///To check one array is subset of other array or not

///Solution
module test;
  int a[],b[],count;
  function string isSubset(int a[],int b[]);
    for(int i=0;i<$size(b);i++)
      begin
        for(int j=0;j<$size(a);j++)
          begin
            if(b[i]==a[j])
              begin
                count++;
              end
          end
      end
    if(count==$size(b))
      begin
        count=0;
        return "Yes";
      end
    else
      begin
        count=0;
        return "No";
      end
endfunction
  
  initial
    begin
      a=new[5];
      b=new[3];
      a='{10,5,2,23,19};
      b='{19,5,3};
      $display("%0s",isSubset(a,b));
      $display("-------------------------------------------");
      a=new[6];
      b=new[4];
      a='{11,1,13,21,3,7};
      b='{11,3,7,1};
      $display("%s",isSubset(a,b));
    end
endmodule
