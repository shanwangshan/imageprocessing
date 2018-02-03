I=imread('lena.tiff');
% imshow(I)
%% a)
YCbCr=rgb2ycbcr(I);
Y=YCbCr(:,:,1);
Cb=YCbCr(:,:,2);
Cr=YCbCr(:,:,3);
figure;
subplot(1,3,1);imshow(Y);title('Y component');
subplot(1,3,2);imshow(Cb);title('Cb component');
subplot(1,3,3);imshow(Cr);title('Cr component');
%% b)
%4:2:2
Cb(:, 2:2:end)=Cb(:, 1:2:end-1);
Cr(:, 2:2:end)=Cr(:, 1:2:end-1);
J22=cat(3,Y,Cb,Cr);
I422=ycbcr2rgb(J22);
imshow(I422)
error1=immse(I,I422);
%% 4:1:1
Cb1=repelem(Cb(:, 1:4:end-3),1,4);
Cr1=repelem(Cr(:, 1:4:end-3),1,4);
J11=cat(3,Y,Cb1,Cr1);
I411=ycbcr2rgb(J11);
imshow(I411)
error2=immse(I,I411);
%% 4:2:0
Cb20=repelem(Cb(1:4:end-3,1:2:end-1),4,2);
Cr20=repelem(Cr(1:4:end-3,1:2:end-1),4,2);
J20=cat(3,Y,Cb20,Cr20);
I420=ycbcr2rgb(J20);
imshow(I420)
error3=immse(I,I420);
%% luminance 4:2:0
Y20=repelem(Y(1:4:end-3,1:2:end-1),4,2);
J201=cat(3,Y20,Cb,Cr);
I4201=ycbcr2rgb(J201);
imshow(I4201)
error4=immse(I,I4201);