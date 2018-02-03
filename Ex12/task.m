clear;
close all;
clc;

I1 = imread('im1.png');
I2 = imread('im2.png');

MotionEstimation(I1,I2,size(I1),32,12);