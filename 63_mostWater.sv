//////Container with Most Water
/*
Q.You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return the maximum amount of water a container can store.

Notice that you may not slant the container.

Example 1:

Input: height = [1,8,6,2,5,4,8,3,7]
Output: 49
Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

Example 2:

Input: height = [1,1]
Output: 1 
*/

///Solution
module test;
  int arr[];
  function void maxArea(int a[]);
    automatic int q[$],j;
    j=$size(a)-1;
    for(int i=0;i<=$size(a)/2;i++)
      begin
        for(int j=$size(a)-1;j>=$size(a)/2;j--)
          begin
            if(a[i]<a[j])
              begin
                q.push_back(a[i]*(j-i));
              end
            else
              begin
                q.push_back(a[j]*(j-i));
              end
          end
      end
    //$display("%p",q);
    $display("max Area is : %p",q.max);
  endfunction
  
  initial
    begin
      arr=new[9];
      arr='{1,8,6,2,5,4,8,3,7};
      maxArea(arr);
      $display("----------------------------------");
      arr=new[4];
      arr='{1, 5, 4, 3};
      maxArea(arr);
      $display("----------------------------------");
      arr=new[5];
      arr='{3, 1, 2, 4, 5};
      maxArea(arr);
      $display("----------------------------------");
      arr=new[2];
      arr='{1,1};
      maxArea(arr);
    end
endmodule
