//Finding common elements from two array

module test;
  int a[5],b[6],r[$];
  initial
    begin
      a='{1,2,6,4,8};
      b='{10,2,5,4,8,60};
      for(int i=0;i<$size(a);i++)
        begin
          for(int j=0;j<$size(b);j++)
            begin
              if(a[i]==b[j])
                r.push_back(a[i]);
            end
        end
      $display("common elements: %p",r);
    end
endmodule
