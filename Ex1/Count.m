function [n] = Count(S)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
%[a,b]=size(S);
%S=reshape(S,a*b,1);
%Count=0;
%for i=1:a*b
  %  if S(i)==1
   % Count=Count+1; 
   % end
%end
%n=Count;
C=S~=0;
n=sum(C(:));
end

