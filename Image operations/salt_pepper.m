pkg load image;
im=imread("DSC_3685.jpg");
k=imnoise(im,'salt&pepper');
imshow(k);


%not w0rking