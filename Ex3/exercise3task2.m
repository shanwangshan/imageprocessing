I=imread('mbaboon.bmp');
figure
imshow(I)
title('the original pic')

blockSize = [4 4];

twotwoFilterFunction = @(theBlockStructure) theBlockStructure.data(2,2);
blockyImage = blockproc(single(I), blockSize, twotwoFilterFunction); 
figure
subplot(1,3,1)
imshow(blockyImage,[])
title('using the median-(2,2) value')


fun= @(theBlockStructure) theBlockStructure.data(1,1);
blockyImage11 = blockproc(I, blockSize, fun);
subplot(1,3,2)
imshow(blockyImage11,[])
title('using the (1,1) value')

meanFilterFunction = @(theBlockStructure) mean2(theBlockStructure.data(:));
blockyImage64 = blockproc(I, blockSize, meanFilterFunction);
subplot(1,3,3)
imshow(blockyImage64,[])
title('using the mean value')
% Question3: 
%Brightness adaptation
%Question4:
%(a)the shape will be stretched c times if c >1 and shrinked to c times if
%c < 1.However the values will remain the same.
%(b)the figure will move to right direction c steps if c >0.  
%(c)nothing changes.







