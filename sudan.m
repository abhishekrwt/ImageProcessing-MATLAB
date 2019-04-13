I=zeros(300,500);
I=uint8(I);
I(:,:,1)=255;
I(:,:,2)=255;
I(:,:,3)=255;
I(1:100,2:500,1)=255;
I(1:100,2:500,2)=0;
I(1:100,2:500,3)=0;
I(201:300,2:500,:)=0;
x=round(atand((1-150)/(1-140)));
for i=1:150
  for(j=1:140)
    temp=round(atand((1-i)/(1-j)));
    if(temp>=x)
      I(i,j,1)=34;
      I(i,j,2)=139;
      I(i,j,3)=34;
    end;
  end;
end;
x=round(atand((300-150)/(1-140)));
for i=150:300
  for(j=1:140)
    temp=round(atand((300-i)/(1-j)));
    if(temp<=x)
      I(i,j,1)=34;
      I(i,j,2)=139;
      I(i,j,3)=34;
    end;
  end;
end;
figure,imshow(I);

