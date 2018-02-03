A=imread('cameraman.tif');
randomnoise=uint8(randi([0 10],size(A)));
B=imadd(A,randomnoise);
sizeoffilter1=3;
sizeoffilter2=5;
sizeoffilter3=7;
[I1,I2,I3,I4]=directional_filtering(B,sizeoffilter1);
[I11,I21,I31,I41]=directional_filtering(B,sizeoffilter2);
[I12,I22,I32,I42]=directional_filtering(B,sizeoffilter3);

%plot
figure
subplot(1,2,1)
imshow(A)
title('the original pic');
subplot(1,2,2)
imshow(B)
title('after adding noise pic');
figure
subplot(2,2,1)
imshow(I1)
title('0 degree of size 3');
subplot(2,2,2)
imshow(I2)
title('45 degree of size 3');
subplot(2,2,3)
imshow(I3)
title('90 degree of size 3');
subplot(2,2,4)
imshow(I4)
title('135 degree of size 3');

figure
subplot(2,2,1)
imshow(I11)
title('0 degree of size 5');
subplot(2,2,2)
imshow(I21)
title('45 degree of size 5');
subplot(2,2,3)
imshow(I31)
title('90 degree of size 5');
subplot(2,2,4)
imshow(I41)
title('135 degree of size 5');

figure
subplot(2,2,1)
imshow(I12)
title('0 degree of size 7');
subplot(2,2,2)
imshow(I22)
title('45 degree of size 7');
subplot(2,2,3)
imshow(I32)
title('90 degree of size 7');
subplot(2,2,4)
imshow(I42)
title('135 degree of size 7');