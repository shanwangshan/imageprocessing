function [s] = logtransformation(I,c)
Idou=double(I);
r=Idou(:);
s=uint8(c*log(1+r));
s=reshape(s,size(I));
end

