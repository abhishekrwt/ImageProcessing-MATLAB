t=zeros(600,600);
t=uint8(t);
%central edge and side spikes
t(220:250,150:450)=180;
t(240:300,100:140)=180;
t(240:300,460:500)=180;
%temp1 for first stripe
%temp2 for second stripe
%temp3 for cutting the edges
for i=1:600
  for j=1:600
    temp3=round(sqrt((i-180)^2+(j-300)^2));
    temp1=round(sqrt((i-970)^2+(j-300)^2));
    temp2=round(sqrt((i-1000)^2+(j-300)^2));
    if(temp1<=800 && temp1>=780)
      t(i,j)=180;
    end
    if(temp2<=800 && temp2>=750)
      t(i,j)=180;
    end
    if(temp3>200)
      t(i,j)=0;
    end
  endfor
endfor

%vertical part of T
x=round(atand((550-250)/(300-250)));
y=round(atand((550-250)/(300-350)));
for i=250:550
  for j=250:350
    temp=round(atand((550-i)/(300-j)));
    if(temp>=x)
      t(i,j)=180;
    end;
    if(temp<=y)
      t(i,j)=180;
     end;
  end;
end;

%small funnel in the middle
x=round(atand((250-190)/(300-270)));
y=round(atand((250-190)/(300-330)));
for i=190:250
  for j=190:330
    temp=round(atand((250-i)/(300-j)));
    if(temp>=x)
      t(i,j)=0;
    end;
    if(temp<=y)
      t(i,j)=0;
     end;
  end;
end;


imshow(t);