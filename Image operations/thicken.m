pkg load image;
im=imread("DSC_3685.jpg");
im=im2bw(im);
b=bwmorph(im,'thicken',5);
imshow(im);figure();imshow(b);
