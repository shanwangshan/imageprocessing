I1=imread('cheetah.jpg');
I2=imread('chameleon.jpg');
dist=100;
%% 
K1=SliceCube(I1,dist);
figure;imshow(K1);title('using slicecube')
%%
K2=SliceSphere(I1,dist);
figure;imshow(K2);title('using sliceSphere')
%%
K3=SliceCube(I2,dist);
figure;imshow(K3);title('using slicecube')
%%
K4=SliceCube(I2,dist);
figure;imshow(K4);title('using sliceSphere')