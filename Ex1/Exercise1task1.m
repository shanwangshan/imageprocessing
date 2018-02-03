I=imread('peppers.png');
subplot(2,3,1)
imshow(I)
title('I-original pic')

I1=rgb2gray(I);
subplot(2,3,2)
imshow(I1)
title('I1-gray-scaled pic')

I2=I;
I2R=I2(:,:,1);
I2G=I2(:,:,2);
I2B=I2(:,:,3);
I2G=I2G+50;
subplot(2,3,3)
I2=cat(3,I2R,I2G,I2B);
imshow(I2)
title('I2-add 50 to green')

R=I(:,:,1);
G=I(:,:,2);
B=I(:,:,3);
BGR=cat(3,B,G,R);
subplot(2,3,4)
imshow(BGR)
title('I3-rearranged pic')

a=zeros(size(I,1),size(I,2));
justred=cat(3,R,a,a);
subplot(2,3,5)
imshow(justred)
title('only red pic')
