pkg load image;
im=imread("DSC_3685.jpg");
[m n k]=size(im);
img=uint8(zeros(m/2,n,k));
r=1;
for i=1:m
  if mod(i,2)!=0
   c=1;
    for j=1:n
      img(r,c,:)=im(i,j,:);
      c=c+1;
    endfor
  r=r+1; 
endif 
endfor
imshow(im);figure();imshow(img);
