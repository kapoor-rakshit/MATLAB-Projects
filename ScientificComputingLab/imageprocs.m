% task 1
% image enhancement
% display histogram
% equalize histogram
% show image
% hist works on row vector

% task 2
% read image
% erode the image
% dilation
% 
% dilate 
% erode
% 
% with same structuring element 
% diffrent structuring element

 
% task 3
% provide colors to grayscale image


% solution 1
% a=imread('pout.tif');
% subplot(2,1,1);
% imshow(a);
% subplot(2,1,2);
% imhist(a);
% 
% b=histeq(a);
% figure
% subplot(2,1,1);
% imshow(b);
% subplot(2,1,2);
% imhist(b);

% solution 2
% a=imread('pout.tif');
% subplot(3,1,1);
% imshow(a);
% 
% subplot(3,1,2);
% se=strel('octagon',21);
% ea=imerode(a,se);
% imshow(ea);
% 
% subplot(3,1,3);
% se=strel('square',21);
% da=imdilate(a,se);
% imshow(da);

% solution 3
% imshow('rice.png');
% figure;
a=imread('logo_of_NIT_Jalandhar.png');
subplot(3,1,1);
imshow(a);

ga=rgb2gray(a);
subplot(3,1,2);
imshow(ga);

ba=im2bw(a);
subplot(3,1,3);
imshow(ba);

% colormap(hot);



 
 

