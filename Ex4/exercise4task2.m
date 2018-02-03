%read all the pics
I1=imread('moon.png');
I2=imread('house.png');
I3=imread('spine.jpg');
I4=imread('church.png');
%plot the pics
%moon
I11=histequal(I1);
%I111=histequal(I11);
%imshow(I111)
figure
imshow(uint8([I1 I11]));
title('the original image (left), the processed pic on the right')

figure
subplot(1,2,1)
histogram(I1)
title('the histogram of moon')
subplot(1,2,2)
histogram(I11)
title('the histogram of processed moon')

%house
figure
I21=histequal(I2);
imshow(uint8([I2 I21]));
title('the original image (left), the processed pic on the right')
figure
subplot(1,2,1)
histogram(I2)
title('the histogram of house')
subplot(1,2,2)
histogram(I21)
title('the histogram of processed house')

%spine
figure
I31=histequal(I3);
imshow(uint8([I3 I31]));
title('the original image (left), the processed pic on the right')
figure
subplot(1,2,1)
histogram(I3)
title('the histogram of spine')
subplot(1,2,2)
histogram(I31)
title('the histogram of processed spine')

%church
figure
I41=histequal(I4);
imshow(uint8([I4 I41]));
title('the original image (left), the processed pic on the right')
figure
subplot(1,2,1)
histogram(I4)
title('the histogram of church')
subplot(1,2,2)
histogram(I41)
title('the histogram of processed church')


%%
%read all the pics
I1=imread('moon.png');
I2=imread('house.png');
I3=imread('spine.jpg');
I4=imread('church.png');
I1equ=histeq(I1);
I2equ=histeq(I2);
I3equ=histeq(I3);
I4equ=histeq(I4);
figure
histogram(I1)
figure
histogram(I2)
figure
histogram(I3)
figure
histogram(I4)
figure
histogram(I1equ)
figure
histogram(I2equ)
figure
histogram(I3equ)
figure
histogram(I4equ)
figure
imshow(I1equ)
figure
imshow(I1)
%%
I1=imread('moon.png');
I2=imread('house.png');
I3=imread('spine.jpg');
I4=imread('church.png');
ContrastStretch(I1,0, 255)
ContrastStretch(I2,0, 255)
ContrastStretch(I3,0, 255)
ContrastStretch(I4,0, 255)


