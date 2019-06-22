clc:clear;
pkg load image
i=imread("DSC_3685.jpg");
numofpixels=size(i,1)*size(i,2);
[x y z]=size(i);
o=uint8(zeros(x,y));
freq=zeros(256,1);
probc=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);
for a=1:size(i,1)
   for b=1:size(i,2)
     value=i(x,y);
     freq(value+1)=freq(value+1)+1;  
   endfor
endfor

sum=0;
no_bins=255;
for a=1:256
  sum=sum+freq(i);
  cum(i)=sum;
  probc(i)=cum(i)/numofpixels;
  output(i)=round(probc(i)*no_bins);
endfor

for a=1:size(i,1)
  for b=1:size(i,2)
    o(i,j)=output(im(i,j)+1);
  endfor
endfor

figure;imhist(im);
figure;imhist(o);