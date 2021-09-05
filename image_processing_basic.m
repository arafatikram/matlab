A = imread('lena.bmp'); %loading original picture 
size(A);

%-------extracting RGB image----------%
R=A;
R(:,:,2)=0;
R(:,:,3)=0;
B=A;
B(:,:,1)=0;
B(:,:,2)=0;
G=A;
G(:,:,1)=0;
G(:,:,3)=0;

%-------Blurring image----------%
H  =  fspecial('gaussian', 25,5); %built-in function
%H = my_gaussian(25,5); %using custom function
%A(:,:,1) = taking only one value than double it, because conv doesn;t 
% work with 3D matrix. So we can get 2D matrix.
%here 50000 is the intensity; higher = clear image
X=conv2(double(A(:,:,1)), H/500); 
imshow(X);
%imshow(H/max(max(H))); %csutomizing gaus value

%-----Edge detection of image-----%
E = edge(double(A(:,:,1)));
% imshow(E)