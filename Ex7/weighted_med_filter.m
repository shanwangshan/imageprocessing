function [ filter_img ] =weighted_med_filter(img,dim)
H=size(img,1);
W=size(img,2);
%pad image with 0
k=(dim-1)/2;
img_pad=zeros(H+dim-1,W+dim-1);
img_pad(k+1:end-k,k+1:end-k)=img;
% filtering
filter_img =zeros(size(img));
for i=1:H
    for j=1:W
        img_patch=img_pad(i:i+2*k,j:j+2*k);
        img_patch(k+1,k+1)=5*img_patch(k+1,k+1);
        filter_img(i,j)=median(img_patch(:));
    end
end

end


