close all;
clc;
I=imread('peppers.png');
A=(0:1:255);%creat a vector from 0 to 255.
step=256/4;% the length of the step
QA1=quant(A, step);%[0,0.5]*step, we give step*0.[0.5,1.5]*step, we give the value,step*1. [1.5,2.5]*step,we give value step*2.[2.5,3.5]*step,we give value step*3.[[3.5,4.5]*step,we give value step*4.
partition = step:step:256-step;% it means that in the position of 64th, 128th ,192th we have to change the value taken from the codebook respectively.
codebook = step/2:step:256-step/2; %the output values are taken from here.
[indx,QA2] = quantiz(A, partition, codebook);%quantize the vector A in such way that we give the value which is from codebook according to the partition respectively.
C=unique(QA1);%get the values in quantized vectors QA1
D=unique(QA2);%get the values in quantized vectors QA2