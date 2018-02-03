%load two imgs
I1=imread('fruits.jpg');
I2=imread('festia.jpg');
%apply histeq function to two imgs
I1R=histeq(I1(:,:,1));
I1G=histeq(I1(:,:,2));
I1B=histeq(I1(:,:,3));
I11=cat(3,I1R,I1G,I1B);

I2R=histeq(I2(:,:,1));
I2G=histeq(I2(:,:,2));
I2B=histeq(I2(:,:,3));
I21=cat(3,I2R,I2G,I2B);
%using intensityeq function
J1=intensityeq(I1);
J2=intensityeq(I2);
%plot
figure;
subplot(2,3,1);imshow(I1);title('the original img of fruits');
subplot(2,3,2);imshow(I11);title('the histogram equalization img');
subplot(2,3,3);imshow(J1);title('the hsv histeq img');
subplot(2,3,4);imshow(I2);title('the original img of festia');
subplot(2,3,5);imshow(I21);title('the histogram equalization img');
subplot(2,3,6);imshow(J2);title('the hsv histeq img');


