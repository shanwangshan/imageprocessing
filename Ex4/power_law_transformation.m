function [s] = power_law_transformation( I,c,gama)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Idou=double(I);
r=Idou(:);
s=c*r.^gama;
s=reshape(s,size(I));
end

