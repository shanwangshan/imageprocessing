I=imread('university.png');
c1=60;
c2=0.2;
gama=0.4;
s1=logtransformation(I,c1);
s2=power_law_transformation(I,c2,gama);
%plot
figure
imshow(I)
figure
subplot(1,2,1)
imshow(s1)
subplot(1,2,2)
imshow(s2)
%for log function, c should be bigger so that we can see the pic. 
%for power-law function, c should be smaller so that we can see the pic.