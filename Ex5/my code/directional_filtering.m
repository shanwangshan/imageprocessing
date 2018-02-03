function [I1,I2,I3,I4] = directional_filtering(I,sizeoffilter )
a1=zeros(sizeoffilter);%0 degree
a1(sizeoffilter/2+0.5,:)=ones(1,sizeoffilter)/sizeoffilter;%0 degree
a3=a1';%90 degree
a4=eye(sizeoffilter)/sizeoffilter;%135 degree
a2=rot90(a4);%45 degree
I1=imfilter(I,a1);
I2=imfilter(I,a2);
I3=imfilter(I,a3);
I4=imfilter(I,a4);
end

