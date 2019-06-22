clc;clear;
pkg load image
im=imread("DSC_3685.jpg");
im=im2bw(im);
b=zeros(3,3);
c=ones(3,3);
cim=1-im;
k=imerode(im,b);
t=imerode(cim,c);
[x y]=size(im);
out=zeros(x,y);
out=im2bw(out);
for i=1:x
   for j=1:y
      if k(i,j)==1&&t(i,j)==1
        out(i,j)=1;
      endif
    endfor
  endfor
  imshow(out);


%not understable

