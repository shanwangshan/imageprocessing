clear all;
close all;
I1=imread('wom1.png');
I2=imread('man8.png');
imshow(ConstrastStretch(I1));
Hist_(I1);
figure;
imshow(ConstrastStretch(I2));
Hist_(I2);

function Hist_(I)
n=length(I);
hist_=zeros(1,n);
for i=1:n
    for j=1:n
    hist_(I(i,j)+1)=hist_(I(i,j)+1)+1;
    end
end
figure;
bar(hist_);
end

%figure;
%histogram(I);

function I=ConstrastStretch(I)
Min=min(I(:));
Max=max(I(:));
n=length(I);
for i=1:n
    for j=1:n
        if I(i,j)<Min
            I(i,j)==0
        end
        if Min<I(i,j)<Max
            I(i,j)=256/(Max-Min)*(I(i,j)-55);
        end
        if  I(i,j)>Max  
            I(i,j)=256;
        end
    end
end
end




