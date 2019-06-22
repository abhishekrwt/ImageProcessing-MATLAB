pkg load image;
im=imread("DSC_3685.jpg");
b=1/9* ones(3,3);
k=imfilter(im,b);
t=im-k;
imshow(t+k);