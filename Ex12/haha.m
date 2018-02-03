I = imread('lena.tiff');
I_hsv=rgb2hsv(I);
I_hsv=double(I_hsv);
%H=I_hsv(:,:,1);
%S=I_hsv(:,:,2);
(I_hsv(:,:,3));
%V=log(V(:));
%V=reshape(V,[512,512]);
%I1=cat(3,H,S,V);
I1s=(hsv2rgb(I_hsv));
imshow(I1)