//L.C.M of Any Two Numbers

module lcm;
  int a[$],b[$],r[$];
  bit k;
  function void LCM(int a1,int b1);
    ///multiples of two numbers
    for(int i=1;i<10;i++)
      begin
        a.push_back(i*a1);
        b.push_back(i*b1);
      end
    $display("a=%p and b=%p",a,b);
    /////////LCM
    for(int i=0;i<$size(a);i++)
        begin
          for(int j=0;j<$size(b);j++)
            begin
              if(a[i]==b[j])
                begin
                  r.push_back(a[i]);
                  k++;
                  if(k)
                    break;
                end
            end
          if(k)
            break;
        end
    $display("LCM is: %p",r);
    a.delete;
    b.delete;
    r.delete;
    k=0;
  endfunction
  initial
    begin
      LCM(20,24);
      LCM(30,42);
    end
endmodule
