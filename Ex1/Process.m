function [ J,S,C ]=Process(I)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
J=imresize(I,0.75);
S=fliplr(J(:,size(J,2)/2:end,:));
%[a,b,c]=size(I);
%Br=I(:,b/2:b,1);
%Bg=I(:,b/2:b,2);
%Bb=I(:,b/2:b,3);
%B=cat(3,Br,Bg,Bb);
%S=fliplr(I);
%Sr=S(:,1:b/2,1);
%Sg=S(:,1:b/2,2);
%Sb=S(:,1:b/2,3);
%S=cat(3,Sr,Sg,Sb);
%S=[S,B];
C=imrotate(S,90);
end
% there are two ways of understanding the right half and mirroed one

