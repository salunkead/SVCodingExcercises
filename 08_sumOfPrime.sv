//Sum Of First 50 Prime Numbers

module test;
  int prime[$];
  int sum=0;
  initial
    begin
      for(int num=1;num<=300;num++)
        begin
          for(int i=1;i<=num;i++)
            begin
              if(i==1)
                continue;
              else if(i<num)
	        begin
	          if(num%i==0)
		     break;
	        end
              else if(i==num)
                prime.push_back(num);
            end
        end
      $display("prime=%0p",prime);
      for(int i=0;i<50;i++)
        begin
          sum=sum+prime[i];
        end
      $display("-----sum of first 50 prime numbers is------");
      $display("sum=%0d",sum);
    end
endmodule
