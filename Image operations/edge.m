pkg load image;
im=imread("DSC_3685.jpg");
b=[1 1 1;1 -8 1;1 1 1];
k=imfilter(im,b);
imshow(k);