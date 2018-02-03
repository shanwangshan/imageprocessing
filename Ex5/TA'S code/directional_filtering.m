function [ img0,img45,img90,img135] =directional_filtering( img,dim)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
kernel_0=zeros(dim);
kernel_0(floor(dim/2),:)=1/dim;% 0 degree
kernel_90=rot90(kernel_0);% 90 degree
kernel_135=eye(dim)/dim;%135 degree
kernel_45=rot90(kernel_135);%45 degree

img0=conv2(img,kernel_0,'same');
img45=conv2(img,kernel_45,'same');
img90=conv2(img,kernel_90,'same');
img135=conv2(img,kernel_135,'same');
end

