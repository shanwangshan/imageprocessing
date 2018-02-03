% task 3
NOISE_LEVEL=20;
img=imread('miranda1.tif');
x_center=floor(size(img,1)/2);
y_center=floor(size(img,2)/2);
% noisy image
noisy_img=img;
noise=uint8(randn(100)*NOISE_LEVEL);
noisy_img(x_center-49:x_center+50,y_center-49:y_center+50)=...
    noisy_img(x_center-49:x_center+50,y_center-49:y_center+50)+noise;
 subplot(1,2,1);imshow(img);title('original image');
 subplot(1,2,2);imshow(noisy_img);title('noisy image');
 %% median filtering
 figure
 subplot(2,2,1);imshow(noisy_img);title('noisy image');
 Dims=3:2:7;
 for k=1:3
     filter_img=med_filter(noisy_img,Dims(k));
     subplot(2,2,k+1);imshow(uint8(filter_img));title(['median filtering result with kernel size=',num2str(Dims(k))]);
 end
 
 %% thresholded median filtering
 figure
 subplot(2,2,1);imshow(noisy_img);title('noisy image');
 Dims=3:2:7;
 for k=1:3
     filter_img=threshold_med_filter(noisy_img,Dims(k),50);
     subplot(2,2,k+1);imshow(uint8(filter_img));
     title(['median filtering result with kernel size=',num2str(Dims(k))]);
 end
     
     
     
 
 
 
     