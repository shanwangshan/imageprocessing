I=imread('wom1.png');
I1=imread('man8.png');
CI=ConstrastStretch(I);
CI1=ConstrastStretch(I1);
subplot(2,2,1)
imshow(I)%show the image of woman pic
title('image of woman pic')
subplot(2,2,2)
imshow(I1)%show the image of man pic
title('image of man pic')
subplot(2,2,3)
imshow(CI);%show the image of processed woman pic
title(' image of processed woman pic')
subplot(2,2,4)
imshow(CI1);%show the image of processed man pic
title(' image of processed man pic')
figure
subplot(1,3,1)
bar(Hist(I))
title('histogram of the original woman pic')
subplot(1,3,2)
bar(Hist(CI))
title('histogram of the processed woman pic')
subplot(1,3,3)
bar(Hist(CI1))
title('histogram of the processed man pic')
%figure
%subplot(1,2,1)
%imshow(I,[0 255])
%subplot(1,2,2)
%imshow(I1,[0 255])
figure
subplot(1,3,1)
imhist(I)
subplot(1,3,2)
imhist(CI)  
subplot(1,3,3)
imhist(CI1) 
                

    