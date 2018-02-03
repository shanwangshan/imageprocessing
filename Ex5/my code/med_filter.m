%function [ O ] =med_filter(I,sizeoffilter,alpha)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
%O= medfilt2(I,[sizeoffilter sizeoffilter]); 

%if abs(I-O)>alpha
 %   O=I;
%end
  
function O=med_filter(x,n,alpha)     
[M, ~]=size(x);   %size of the imput image  
x1=double(x);  
x2=x1;  
for i=1:M-n+1  
    for j=1:M-n+1  
        c=x1(i:i+(n-1),j:j+(n-1)); 
        e=c(1,:);      %the first row of matrix c  
        for u=2:n  
            e=[e,c(u,:)];     %      
        end  
        mm=median(e);      %mm is the median value  
        x2(i+(n-1)/2,j+(n-1)/2)=mm;   %assign the median value to the center point  
    end  
    O=uint8(x2);
    if abs(x-O)>alpha
      O=x;
    end
  
end   


%end

