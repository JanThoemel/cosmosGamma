clear all; clc; 
sstX(1,1)=1;
 sstY(1,1)=0;
a=[1 1 1];

%% rotate relative coordinate system to align x+ with flight direction (inclination)
  for i=1:1
    for j=1:size(sstX,2)
      %[sstX(i,j), sstY(i,j), 0]=rotz(90)*[sstX(i,j) sstY(i,j) 0]';
      a=rotz(90)*[sstX(i,j) sstY(i,j) 0]';
    end
    sstX(i,j)=a(1);
    sstY(i,j)=a(2);
   end
  a
  sstX
  sstY
  