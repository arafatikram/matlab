clc
clear all
A = imread('lena.bmp'); %loading original picture 

H  =  fspecial('gaussian', 100,5); %built-in function
% H = my_gaussian(25,5); %using custom function

%A(:,:,1) = taking only one value than double it, because conv doesn;t 
% work with 3D matrix. So we can get 2D matrix.
%here 50000 is the intensity; higher = clear image

X=conv2(double(A(:,:,1)), H/500); 
imshow(X)
