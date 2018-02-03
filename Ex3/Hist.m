function [Hist1]=Hist(I)
n=length(I);
[M,N]=size(I);
Hist1=zeros(1,n);%creat a zero vector which is 1 by n.
d=1/M/N;
for i=1:n%go through all the rows 
    for j=1:n%go through all the columns 
    Hist1(I(i,j)+1)=Hist1(I(i,j)+1)+d;%I(i,j),gray scale starts from 0 to 255 that is the reason we add 1.
    end
end
end

