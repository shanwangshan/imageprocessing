function [I1,lookup] = histequal(I)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[M,N]=size(I);
Hist1=zeros(1,256);%creat a zero vector which is 1 by n.
d=1/M/N;
for i=1:M%go through all the rows 
    for j=1:N%go through all the columns 
    Hist1(I(i,j)+1)=Hist1(I(i,j)+1)+d;%I(i,j),gray scale starts from 0 to 255 that is the reason we add 1.
    end
end
%Hist1=Hist1/(M*N);
sum=0;
for t=1:1:256
    sum=sum+Hist1(t);
    lookup(t)=sum*255+0.5;
end
for i=1:M
    for j=1:N
        I1(i,j)=uint8(lookup(I(i,j)+1));
    end
end
    
end

