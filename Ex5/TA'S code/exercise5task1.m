%Ex5 Task 1
A=[8,9,9.7];
img=imread('cameraman.tif');
lap_img={};
for k=1:numel(A)
    %Laplacian kernel
    kerne1=-ones(3,3);
    kerne1(2,2)=A(k);
    lap_img{k}=conv2(img,kerne1,'same');
end
subplot(2,2,1);imshow(img);title('original image');
subplot(2,2,2);imshow(lap_img{1});title(['A=',num2str(A(1))]);
subplot(2,2,3);imshow(lap_img{2});title(['A=',num2str(A(2))]);
subplot(2,2,4);imshow(lap_img{3});title(['A=',num2str(A(3))]);