clear all;
close all;
I=imread('mbaboon.bmp');
imshow(I);
figure;
imshow(replace(I,2));
figure;
imshow(replace(I,1));
figure;
I_=Average(I);
imshow(I_,[0 255]);

function I_=replace(I,k)
    for i=1:(256/4)
        for j=1:(256/4)
            I_(i,j)=I(4*(i-1)+k,4*(j-1)+k);
        end
    end
end

function I_=Average(I)
    for i=1:256
        for j=1:(256/4)
            mean_(i,j)=mean([I(i,4*(j-1)+1) I(i,4*(j-1)+2) I(i,4*(j-1)+3) I(i,4*(j-1)+4)]);
        end
    end
    for i=1:(256/4)
        for j=1:(256/4)
        I_(i,j)=mean([mean_(4*(i-1)+1,j) mean_(4*(i-1)+2,j) mean_(4*(i-1)+3,j) mean_(4*(i-1)+4,j)]);
        end
    end
end

% Question3: Brightness adaption
% Question4: (a) the shape of the distribution unchanged and the x-axis move to right(when c>1) by
% c times or move to left(when c<1) by c times.
%(b) x axis unchanged, the shape of the bar increases c(c>0) or decreases
% c(c<0).
%(c) Totally the same.