//Missing Number In An Array

module test;
  int a[];
  function int missing(int a[]);
    a.sort();
    for(int i=0;i<$size(a);i++)
      begin
        if(i+1!=a[i])
          return (i+1);
      end
  endfunction
  
  initial
    begin
      a=new[4];
      a='{1,2,3,5};
      $display("array=%p",a);
      $display("Missing number in an array is : %0d",missing(a));
      a=new[10];
      a='{6,1,2,8,3,4,7,10,5};
      $display("--------------------------------------------------");
      $display("array=%p",a);
      $display("Missing number in an array is : %0d",missing(a));
    end
endmodule
