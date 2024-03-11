//Implementation Of Queue Data Type using Dynamic Array (push_back and pop_front)

module test;
  int q[];
  int ptr;
  
  function void push_back(int num);
    ptr++;
    if(ptr==1)
      begin
        q=new[ptr];
      end
    else
      begin
        q=new[ptr](q);
      end
    q[ptr-1]=num;
  endfunction
  
  function int pop_front();
    int temp[];
    temp=new[q.size];
    temp=q;
    pop_front=q[0];
    q=new[q.size-1];
    foreach(q[i])
      q[i]=temp[i+1];
    ptr--;
  endfunction
  
  initial
    begin
      repeat(10)
        begin
          push_back($urandom_range(1,50));
          $display("q=%p",q);
        end
      $display("---------------------------------");
      repeat(10)
        begin
          $display("%0d",pop_front);
          $display("%p",q);
        end
      $display("---------------------------------");
      repeat(10)
        begin
          push_back($urandom_range(1,50));
          $display("q=%p",q);
          $display("%0d",pop_front);
          $display("%p",q);
        end
    end
endmodule
