clc;clear;
im=imread("DSC_3685.jpg");
b=zeros(3,3);
c=ones(3,3);
t=bwhitmiss(im,b,c);
imshow(t);