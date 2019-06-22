pkg load image;
im=zeros(100,100);

for i=20:80
  for j=20:80
     im(i,j)=1;
  endfor
endfor

for i=25:75
  for j=25:75
    im(i,j)=0;
endfor
endfor

s=ones(5,5);

imshow(im);
dil=imdilate(im,s);
figure; imshow(dil);

