I=imread("greenleaf.jpg");
i=rgb2gray(I);
i1=i';
figure,imshow(i1);
figure,imshow(255-I);