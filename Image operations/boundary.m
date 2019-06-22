pkg load image;
i=imread("DSC_3685.jpg");
im1=rgb2gray(i);
im2=im2bw(im1,graythresh(im1));
im2= ~im2;
b=bwboundaries(im2);
[x y]=size(b);

%for counting no. of objects
