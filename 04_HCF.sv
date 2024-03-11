///H.C.F of Two Numbers

module hcf;
  int rem,divisor;
  function void HCF(int a,int b);
    int grt,smal;
    if(a>b)
      begin
        grt=a;
        smal=b;
      end
    else
      begin
        grt=b;
        smal=a;
      end
     if(grt%smal==0)
       begin
         $display("HCF of a=%0d and b=%0d is :%0d",a,b,smal);
         return;
       end
    else
      begin
        rem=grt%smal;
        divisor=smal;
      end
    forever
      begin
        if(divisor%rem==0)
          begin
            $display("HCF of a=%0d and b=%0d is :%0d",a,b,rem);
            break;
          end
        else
          begin
            rem=divisor%rem;
            divisor=divisor-rem;
          end
      end
  endfunction
  
  initial
    begin
      HCF(60,72);
      HCF(24,36);
      HCF(56,70);
      HCF(72,90);
      HCF(84,90);
      HCF(55,77);
      HCF(75,90);
    end
endmodule
