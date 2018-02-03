I=imread('lena.jpg');

%% Gaussion noise
J = imnoise(I,'gaussian');
subplot(1,2,1);imshow(I);title('the original pic');
subplot(1,2,2);imshow(J);title('the Gaussion noisy pic');
%% salt & pepper noise
J1=imnoise(I,'salt & pepper', 0.05);
subplot(1,2,1);imshow(I);title('the original pic');
subplot(1,2,2);imshow(J1);title('the salt&pepper noisy pic');
%% Rayleigh noise
b=8000;
noise=sqrt(-b*log(1-rand(size(I,1),size(I,2))));
J2=imadd(I,uint8(noise));
subplot(1,2,1);imshow(I);title('the original pic');
subplot(1,2,2);imshow(J2);title('the Rayleigh noisy pic');
%% task 2
figure;
suptitle('1st original pic,2nd,gaussian noisy pic,3rd,salt&pepper,4th,rayleigh noisy pic')
subplot(2,2,1);imshow(I);subplot(2,2,2);imshow(J);subplot(2,2,3);imshow(J1);subplot(2,2,4);imshow(J2);
 f1=imfilter(J,fspecial('average',[3 3])); 
 f2=exp(imfilter(log(im2double(J)),ones(3,3),'replicate')).^(1/(3*3)); 
 f3= (3*3)./imfilter(1./(double(J+eps)),ones(3,3),'replicate'); 
 figure;
subplot(2,2,1);imshow(J);title('the Gaussion noisy pic');
subplot(2,2,2);imshow(f1);title('filtered by Arithmetic mean filter');
subplot(2,2,3);imshow(f2);title('filtered by Geometric mean filter');
subplot(2,2,4);imshow(uint8(f3));title('filtered by Harmonic mean filter');
%%
 f1=imfilter(J1,fspecial('average',[3 3])); 
 f2=exp(imfilter(log(im2double(J1)),ones(3,3),'replicate')).^(1/(3*3)); 
 f3= (3*3)./imfilter(1./(double(J1)+eps),ones(3,3),'replicate'); 
 figure;
subplot(2,2,1);imshow(J1);title('the salt&pepper noisy pic');
subplot(2,2,2);imshow(f1);title('filtered by Arithmetic mean filter');
subplot(2,2,3);imshow(f2);title('filtered by Geometric mean filter');
subplot(2,2,4);imshow(uint8(f3));title('filtered by Harmonic mean filter');
%%
 f1=imfilter(J2,fspecial('average',[3 3])); 
 f2=exp(imfilter(log(im2double(J2)),ones(3,3),'replicate')).^(1/(3*3)); 
 f3= (3*3)./imfilter(1./(double(J2)+eps),ones(3,3),'replicate'); 
 figure;
subplot(2,2,1);imshow(J2);title('the Rayleigh noisy pic');
subplot(2,2,2);imshow(f1);title('filtered by Arithmetic mean filter');
subplot(2,2,3);imshow(f2);title('filtered by Geometric mean filter');
subplot(2,2,4);imshow(uint8(f3));title('filtered by Harmonic mean filter');