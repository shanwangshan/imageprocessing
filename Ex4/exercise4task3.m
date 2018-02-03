%my code
A=imread('corel.png');
B=imread('spine.jpg');
D= histmatch(A,B);
%plot
subplot(1,3,1)
imshow(A)
title('the target image')
subplot(1,3,2)
imshow(B)
title('the ref image')
subplot(1,3,3)
imshow(D)
title('the histogram matching image')
%%
A=imread('corel.png');
figure
imshow(A)
B=imread('spine.jpg');
figure
imshow(B)
C=imhistmatch(A,B);
figure
imshow(C)
%%task 4
%by using the histogarm equalization, the histogram ahs been already
%equalized, so using multiple times will not make huge differences.
%task 5
%after using the localized histogram equalization, the image will look
%better and more details can be seen.
