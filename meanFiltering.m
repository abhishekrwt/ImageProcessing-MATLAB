I=imread("redleaf.jpg");
b=1/9*(ones(3,3));
[w,h]=size(I);
w
Im=imfilter(I,b);
I=I+(I-Im);
figure,imshow(I);
%figure,imshow(Im);
