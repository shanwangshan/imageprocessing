A=imread('cameraman.tif');
kernel1=[-1 -1 -1;-1 8 -1;-1 -1 -1];
kernel2=[-1 -1 -1;-1 9 -1;-1 -1 -1];
kernel3=[-1 -1 -1;-1 9.7 -1;-1 -1 -1];
A1 = imfilter(A,kernel1) ;
A2 = imfilter(A,kernel2) ;
A3 = imfilter(A,kernel3) ;
%plot
subplot(2,2,1)
imshow(A)
title('the original pic');
subplot(2,2,2)
imshow(A1)
title('center value is 8 ');
subplot(2,2,3)
imshow(A2)
title('center value is 9 ');
subplot(2,2,4)
imshow(A3)
title('center value is 9.7');