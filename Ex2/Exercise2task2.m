clear all;
clc;
I=imread('lena_face.png');
for i=1:6
step = 256/2^(i+1);
partition=step:step:256-step;
codebook=step/2:step:256-(step/2);
[~,QA(i,:)]=quantiz(I(:),partition,codebook);
figure (i) ;
imshow(reshape(QA(i,:),[256,256]),[0,255])
end
step1 = 256/16;
partition1=step1:step1:256-step1;
codebook1=step1/2:step1:256-(step1/2);
%snoise=0.1*randn(size(I));% this is another way to add noise
%J=imadd(I,im2uint8(snoise));
J=I+100*uint8(randn(size(I)));% we add the random noise to the original pic
figure
imshow(J)

[indx1,QA1]=quantiz(J(:),partition1,codebook1);%quantize the noised pic to 16 level.
figure
imshow(reshape(QA1,[256,256]),[0,255])
