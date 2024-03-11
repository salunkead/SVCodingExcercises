//Implementation of Stack Data Structure Using Array

module t;
  int stack[];
  int ptr=-1,temp;
  bit full,empty;
  
  function void insert(int num);
    if(ptr<$size(stack))
      begin
        ptr++;
        stack[ptr]=num;
      end
  endfunction
  
  function bit is_full;
    if(ptr==$size(stack)-1)
        full=1;
    else
        full=0;
    return full;
  endfunction
  
  function bit is_empty;
    if(ptr==-1)
      empty=1;
    else
      empty=0;
    return empty;
  endfunction
  
  function void pop();
     if(ptr!=-1)
       begin
         stack[ptr]=0;
         ptr--;
       end
  endfunction
  
  initial
    begin
      stack=new[10];
      repeat(11)
        begin
          $display("full=%0b empty=%0b",is_full,is_empty);
          temp=$urandom_range(1,100);
          insert(temp);
          $display("stack=%0p",stack);
        end
      $display("---------------------------------------");
       repeat(11)
        begin
          pop();
          $display("full=%0b empty=%0b",is_full,is_empty);
          $display("stack=%0p",stack);
        end
    end
endmodule
