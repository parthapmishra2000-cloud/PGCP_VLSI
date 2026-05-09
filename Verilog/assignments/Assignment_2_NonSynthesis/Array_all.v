module Array_all;
 integer arr[0:15], arr1[0:15];
 integer sum=0;
 integer i,max=0,min=16;
 integer key=5,j,o=0,e=0;
 real avg;
 initial begin
  for(i=0;i<16;i=i+1)
  begin
  arr[i]=i;
  $write("%0d\t",i);
  end
    $write("\n");
  for(i=0;i<16;i=i+1)
  begin
  sum=sum+arr[i];
  end
  $write("sum = %0d\n",sum);
  avg=sum/16;
  $write("Avg = %0f\n",avg);
  for(i=0;i<16;i=i+1)
  begin
  if(arr[i]>max)
  max=arr[i];
  if(arr[i]<min)
  min=arr[i];
  if(arr[i]==key)
  j=i;
  end
  $write("max = %0d, min = %0d\n",max,min);
  $write("The key is found at index %0d\n",j);
  for(i=0;i<16;i=i+1)
  begin
  if(arr[i]%2==0)
  e=e+1;
  else
  o=o+1;
  end
  $write("Even = %0d, Odd = %0d\n",e,o);
  $write("reversed array\n");
  for(i=0;i<16;i=i+1)
  $write("%0d\t",arr[15-i]);
  $write("\n");
  for(i=0;i<16;i=i+1)
   arr1[i]=arr[i];
  $write("The copied array\n");
  for(i=0;i<16;i=i+1)
  begin
  $write("%0d\t",arr1[i]);
  end
  $finish;
  end
  endmodule