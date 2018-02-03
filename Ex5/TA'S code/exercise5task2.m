%% task2
NOISE_LEVEL=10;
%read image and add noise
img=imread('cameraman.tif');
noisy_img=img+uint8(randn(size(img))*NOISE_LEVEL);
%% plot
figure
subplot(1,2,1);imshow(img);title('original image');
subplot(1,2,2);imshow(noisy_img);title('Noisy Image');
%% filter with directional_filter
for k=3:2:7
    figure;suptitle(['kernel size=',num2str(k)])
    %perform directional filtering
    [img0,img45,img90,img135]=directional_filtering(noisy_img,k);
    subplot(2,2,1);imshow(uint8(img0));title('0 degree');
    subplot(2,2,2);imshow(uint8(img45));title('45 degree');
    subplot(2,2,3);imshow(uint8(img90));title('90 degree');
    subplot(2,2,4);imshow(uint8(img135));title('135 degree');
    
    figure;suptitle(['kernel size=',num2str(k)]);
    subplot(1,2,1);imshow(noisy_img);title('Noisy Image');
    % Averaging result
    filter_img=(img0+img45+img90+img135)/4;
    subplot(1,2,2);imshow(uint8(filter_img));title('combined filtering result');
end
    
    
    
    
    
