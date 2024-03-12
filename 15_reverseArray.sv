//Function To Reverse The Given Array

module test;
  int a[];
  function automatic void reverse(ref int a[]);
    int t;
    for(int i=0;i<($size(a)/2);i++)
      begin
        t=a[i];
        a[i]=a[($size(a)-1)-i];
        a[($size(a)-1)-i]=t;
      end
  endfunction
  
  initial
    begin
      a=new[10];
      a='{200,30,450,690,85,100,120,130,140,150};
      reverse(a);
      $display("%p",a);
      $display("---------------------------------");
      a=new[5];
      a='{560,170,63,74,79};
      reverse(a);
      $display("%p",a);
      $display("---------------------------------");
      a=new[8];
      std::randomize(a) with {unique{a};};
      std::randomize(a) with {foreach(a[i])a[i] inside{[1:500]};};
      $display("before reverse : %p",a);
      reverse(a);
      $display("after reverse : %p",a);
      $display("---------------------------------");
    end
endmodule
