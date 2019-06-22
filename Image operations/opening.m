pkg load image;
im=imread("DSC_3685.jpg");
im=rgb2gray(im);
s=strel('square',2);
o=imdilate(imerode(im,s),s);
imshow(im);figure();imshow(o);
