pkg load image;
im=imread("DSC_3685.jpg");
im=im2bw(im);
b=bwmorph(im,'thin',inf);
imshow(im);figure();imshow(b);
