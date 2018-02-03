I=imread('DIP.jpg');
[row,col]=size(I);

%do the DFT of the image
F = fft2(I);
Fc = fftshift(F);
%imshow(log(abs(Fc)+0.0001))

%generate the filter
T=1;a=0.1;b=0.1;
[u,v]=meshgrid(-row/2+1:row/2,-col/2+1:col/2);
 H=(T./(pi*(u*a+v*b)+0.01)).*sin(pi*(u*a+v*b)).*exp(-1i*pi*(u*a+v*b));
%  H = sin(pi*(u*a+v*b)).*exp(-1i*pi.*(u*a+v*b)).*(T./(pi*(u*a + v*b)+eps));%？

% apply the filter to the image
G = H.*Fc;
gi = ifft2(ifftshift(G));
g = uint8(real(gi));

% get the inverse filter and apply on it
G_F = fftshift(fft2(gi));
inver_I1 = G_F./ (H + 0.01);% before it is multiplication, for the inverse, it is division
inver_F_I = ifftshift(inver_I1);% why adding 0.01,If division by values close to zero causes problems, add a small constant value to the denominator.)
inver_I = ifft2(inver_F_I);
inver_I = uint8(real(inver_I));

% plot
figure;subplot(1,3,1);imshow(I);
subplot(1,3,2);imshow(g);subplot(1,3,3);imshow(inver_I);

%
err1 = immse(g,I);
fprintf('\n The mean-squared error of the motion blurred image is %0.4f', err1);
err2 = immse(inver_I,I);
fprintf('\n The mean-squared error of the restored image  is %0.4f', err2);
%% task2
noise=sqrt(50).*randn(size(I));%create noise
I1=imadd(g,uint8(noise));%part a-add the noise to the blur image
In=fftshift(fft2(I1));%the DFT of the degraded image(noisy blury image)
Inverse=In./(H+0.01);% using the normal filter H
I11=uint8(real(ifft2(ifftshift(Inverse))));%part b
%part c
a=abs(H).^2;%or using a=conj(H).*H
sn=abs(fftshift(fft2(noise)));%get the DFT of the noise, then get its abs value
sf=abs(Fc);% the DFT of the perfect image,then get its abs value
k=sn./(sf+0.01);%calculate the ratio
k1=0.02;
k2=0.01;
k3=0.009;
J=(1./(H+0.01)).*(a./(a+k));%this is the filter
J1=(1./(H+0.01)).*(a./(a+k1));
J2=(1./(H+0.01)).*(a./(a+k2));
J3=(1./(H+0.01)).*(a./(a+k3));
F=J.*In;%G(u,v) in the formula,here is In,is the degraded image(noisy and blurry)
F1=J1.*In;
F2=J2.*In;
F3=J3.*In;
wnr=uint8(real(ifft2(ifftshift(F))));
wnr1=uint8(real(ifft2(ifftshift(F1))));
wnr2=uint8(real(ifft2(ifftshift(F2))));
wnr3=uint8(real(ifft2(ifftshift(F3))));
%  plot
figure;subplot(1,3,1);imshow(I1);subplot(1,3,2);imshow(I11);
subplot(1,3,3);imshow(wnr);
figure;
subplot(1,3,1);imshow(wnr1);subplot(1,3,2);imshow(wnr2);subplot(1,3,3);imshow(wnr3);

