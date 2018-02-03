%%
close all;
clc;
I1=63/255*ones(8);
I1(3:6,3:6)=127/255*ones(4);
I2=223/255*ones(8);
I2(3:6,3:6)=127/255*ones(4);
subplot(1,2,1)
imshow(I1)
subplot(1,2,2)
imshow(I2)
%%
clear all;

A1=63*ones(85,256);
A2=cat(2,63*ones(86,85),127*ones(86),63*ones(86,85));
A=cat(1,A1,A2,A1);

B1=223*ones(85,256);
B2=cat(2,223*ones(86,85),127*ones(86),223*ones(86,85));
B=cat(1,B1,B2,B1);

B1=223*ones(85,256);
B2=cat(2,223*ones(86,85),180*ones(86),223*ones(86,85));
B=cat(1,B1,B2,B1);

imshow(A,[0 255]);
figure(2);
imshow(B,[0 255]);