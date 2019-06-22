I=zeros(300,500);
I=uint8(I);
x=round(atand((300-1)/(1-200)));
y=round(atand((300-1)/(1-400)));
z=round(atand((300-100)/(1-600)));
p=round(atand((300-200)/(1-600)));
q=round(atand((300-200)/(1-600)));
for i=1:300
  for j=1:500
    temp=round(atand((300-i)/(1-j)));
    if(temp<=x)
      I(i,j,1)=17;
      I(i,j,2)=30;
      I(i,j,3)=108;
    elseif(temp>=x && temp<=y)
      I(i,j,1)=252;
      I(i,j,2)=216;
      I(i,j,3)=86;
    elseif(temp>y && temp<=z)
      I(i,j,1)=214;
      I(i,j,2)=40;
      I(i,j,3)=40;
    elseif(temp>z && temp<=p)
      I(i,j,1)=255;
      I(i,j,2)=255;
      I(i,j,3)=255;
     else
      I(i,j,1)=0;
      I(i,j,2)=122;
      I(i,j,3)=61;
    end;
  end;
end;
figure,imshow(I);