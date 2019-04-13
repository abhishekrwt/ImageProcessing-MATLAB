t=zeros(600,600);
t=uint8(t);
r=930;
c=300;
for i=1:600
  for j=1:600
    temp1=round(sqrt((i-900)^2+(j-300)^2));
    temp2=round(sqrt((i-r)^2+(j-c)^2));
    if(temp1<=800 && temp1>=780)
      t(i,j)=255;
    end
    if(temp2<=800 && temp2>=780)
      t(i,j)=255;
    end
  endfor
endfor
for i=1:600
  for j=1:600
    temp3=round(sqrt((i-120)^2+(j-300)^2));
    if(temp3>140)
      t(i,j)=0;
    end
  endfor
endfor
imshow(t);