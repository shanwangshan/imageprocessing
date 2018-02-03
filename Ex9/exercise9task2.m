I = imread('lake.jpg');
I1 = rgb2hsv(I);%change the color space
level=graythresh(I1);
bw = im2bw(I1,level);%get the binary img
[L,num] = bwlabel(bw);
% to store total number of pixels of each object
matrix = zeros(1,num);
for i = 1 : num
    matrix(i) = length(find(L(:) == i));
end
% find the object with maximum pixels 
[a, idx] = max(matrix);
% find the target object
bw1 = (L==idx);
% construct the pixels
d11=repmat(bw1(:), 1, 3); 
d1=reshape(d11,size(I));
d2=uint8(d1).*I;
%plot
figure;imshow(I);title('original image');
figure;imshow(bw);title('binary image');
figure;imshow(uint8(L));title('labeled image');
figure;imshow(d2);title('extracted object');