//Finding Second Minimum From An Unsorted Array

module test;
  bit[7:0] q[10];
  bit[7:0] temp;
  function void second_min(bit[7:0] num[]);
    $display("Main Array : q=%p",q);
    for(int i=0;i<$size(q);i++)
        begin
          for(int j=i+1;j<$size(q);j++)
            begin
              if(q[i]>q[j])
                begin
                  temp=q[i];
                  q[i]=q[j];
                  q[j]=temp;
                end
            end
        end
    $display("Sorted Array : q=%p",q);
    $display("Second min.");
    $display(q[1]);
    $display("---------------------------------------------");
  endfunction
  
  initial
    begin
      repeat(20)
        begin
          std::randomize(q) with {unique{q};};
          second_min(q);
        end
    end
endmodule
