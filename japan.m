flag=(zeros(300,600));
flag(:,:,1:3)=255;
imshow(flag);
r=150;
c=300;
for i=1:300
  for j=1:600
    if(round(sqrt((i-r)^2+(j-c)^2)))<=100;
      flag(i,j,2:3)=0;
    end
  endfor
endfor
flag=uint8(flag);
imshow(flag);
imwrite(flag,'japan.jpg');