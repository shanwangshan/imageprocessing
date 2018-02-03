% a)

I = imread('lena.tiff');
I_hsv=rgb2hsv(I);
figure;
subplot(2,3,1);imshow(I(:,:,1),[]);title('R channel');
subplot(2,3,2);imshow(I(:,:,2),[]);title('G channel');
subplot(2,3,3);imshow(I(:,:,3),[]);title('B channel');
subplot(2,3,4);imshow(I_hsv(:,:,1),[]);title('H channel');
subplot(2,3,5);imshow(I_hsv(:,:,2),[]);title('S channel');
subplot(2,3,6);imshow(I_hsv(:,:,3),[]);title('V channel');
%%
% b)
J_G = imnoise(I(:,:,2),'gaussian');
I1=cat(3,I(:,:,1),J_G,I(:,:,3));
figure;
imshow(I1);title('with noisy green channel R/G/B');
I1_hsv=rgb2hsv(I1);
figure;
imshow(I1_hsv);title('with noisy green channel H/S/V');
figure;
subplot(2,3,1);imshow(I1(:,:,1),[]);title('R channel');
subplot(2,3,2);imshow(I1(:,:,2),[]);title('noisy G channel');
subplot(2,3,3);imshow(I1(:,:,3),[]);title('B channel');
subplot(2,3,4);imshow(I1_hsv(:,:,1),[]);title('H channel');
subplot(2,3,5);imshow(I1_hsv(:,:,2),[]);title('S channel');
subplot(2,3,6);imshow(I1_hsv(:,:,3),[]);title('V channel');

%%
% c)
J_R = imnoise(I(:,:,1),'gaussian');
J_G = imnoise(I(:,:,2),'gaussian');
J_B = imnoise(I(:,:,3),'gaussian');
I2=cat(3,J_R,J_G,J_B);
Ish = imnoise(I,'gaussian');
figure;
imshow(Ish);title('with noisy R/G/B channel');
I2_hsv=rgb2hsv(Ish);
figure;
imshow(I2_hsv);title('with noisy H/S/V channel');
figure;
subplot(2,3,1);imshow(Ish(:,:,1),[]);title('noisy R channel');
subplot(2,3,2);imshow(Ish(:,:,2),[]);title('noisy G channel');
subplot(2,3,3);imshow(Ishs(:,:,3),[]);title('noisy B channel');
subplot(2,3,4);imshow(I2_hsv(:,:,1),[]);title('noisy H channel');
subplot(2,3,5);imshow(I2_hsv(:,:,2),[]);title('noisy S channel');
subplot(2,3,6);imshow(I2_hsv(:,:,3),[]);title('noisy V channel');

%%
% d)
m = 3;
n = 3;% 
I2_f = imfilter(I2,fspecial('average',[m n])); % 
figure;imshow(I2_f,[]);title('filter noisy R/G/B channel');
I2R_f = imfilter(I2(:,:,1),fspecial('average',[m n])); 
I2G_f = imfilter(I2(:,:,2),fspecial('average',[m n])); 
I2B_f = imfilter(I2(:,:,3),fspecial('average',[m n])); 

I2_hsv_f = imfilter(I2_hsv,fspecial('average',[m n])); 
figure;imshow(I2_hsv_f,[]);title('filter noisy H/S/V channel');
I2G_hsv_f = imfilter(I2_hsv(:,:,2),fspecial('average',[m n]));
I2B_hsv_f = imfilter(I2_hsv(:,:,3),fspecial('average',[m n]));
HSV=cat(3,I2_hsv(:,:,1),I2G_hsv_f ,I2B_hsv_f);
RGB=hsv2rgb(HSV);
figure;
imshow(RGB);
figure;
subplot(2,3,1);imshow(I2R_f,[]);title('filter noisy R channel');
subplot(2,3,2);imshow(I2G_f,[]);title('filter noisy G channel');
subplot(2,3,3);imshow(I2B_f,[]);title('filter noisy B channel');
subplot(2,3,4);imshow(I2R_hsv_f,[]);title('filter noisy H channel');
subplot(2,3,5);imshow(I2G_hsv_f,[]);title('filter noisy S channel');
subplot(2,3,6);imshow(I2B_hsv_f,[]);title('filter noisy V channel');