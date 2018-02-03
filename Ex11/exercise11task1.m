load('yuvdata.mat');
%there are differences.yy is four times the size of uu and vv.
%yy=cols*rows;uu=cols/2*rows/2;vv=cols/2*rows/2;
%% b)
reshaped_yy=reshape(yy, cols,rows);
reshaped_uu=reshape(uu, cols/2, rows/2);
reshaped_vv=reshape(vv, cols/2, rows/2);
%plot
figure;
subplot(1,3,1);imshow(imrotate(flip(reshaped_yy), -90), []);title('Y component');
subplot(1,3,2);imshow(imrotate(flip(reshaped_uu), -90), []);title('U component');
subplot(1,3,3);imshow(imrotate(flip(reshaped_vv), -90), []);title('V component');

%% c)
reshaped_uu=imresize(reshaped_uu, size(reshaped_yy))-127;
reshaped_vv=imresize(reshaped_vv, size(reshaped_yy))-127;
% d)
YUV=cat(2, reshaped_yy(:), reshaped_uu(:), reshaped_vv(:));
YuvToRgb=[1 0 1.402;1 -0.34413 -0.71414;1 1.772 0];
% e)
RGB=YuvToRgb*YUV';
% f)
R=reshape(RGB(1, :), cols, rows);
G=reshape(RGB(2, :), cols, rows);
B=reshape(RGB(3, :), cols, rows);
I=cat(3, R, G, B);
I=uint8(I);
figure;imshow(imrotate(flip(I), -90), []);