I=imread('baboon.png');
J=imnoise(I,'salt & pepper', 0.02);
J1=uint8(med_filter(J,3));
J2=uint8(weighted_med_filter(J,3));
%plot
figure;
subplot(2,2,1);imshow(I);title('the original pic');
subplot(2,2,2);imshow(J);title('noisy pic');
subplot(2,2,3);imshow(J1);title('filtered by median pic');
subplot(2,2,4);imshow(J2);title('filtered by weighted median pic');