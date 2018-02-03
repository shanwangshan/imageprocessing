I1=imread('c_1.jpg');
I2=imread('c_2.jpg');
I3=imread('c_3.jpg');
I4=imread('c_4.jpg');
I5=imread('c_5.jpg');
I6=imread('c_6.jpg');
[J1,S1,C1]=Process(I1);
[J2,S2,C2]=Process(I2);

figure
imshow(I1)
title('the original pic')
figure
imshow(J1)
title('the 75% of the original pic')
figure
imshow(S1)
title('right half and mirrored pic')
figure
imshow(C1)
title('the rotated pic')


figure
imshow(I2)
title('the original pic')
figure
imshow(J2)
title('the 75% of the original pic')
figure
imshow(S2)
title('right half and mirrored pic')
figure
imshow(C2)
title('the rotated pic')


