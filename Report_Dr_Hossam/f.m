clc
clear all

warning off

a=[ 0 0 0 0 0 0 0
    0 0 1 1 0 0 0
    0 1 0 0 1 0 0
    0 1 0 0 1 0 0
    0 0 1 0 1 0 0
    0 0 1 0 1 0 0
    0 1 0 0 0 1 0
    0 1 0 0 0 1 0
    0 1 1 1 1 0 0
    0 0 0 0 0 0 0];
imshow(a);
%%
%Defining the structuring element
b=[0 1 0;1 1 1;0 1 0];
%%
%Take the complement of the original Image
acmp=~(a);
%%
%Deside the strat point of hole and make that 1
x=[0 0 0 0 0 0 0
    0 0 0 0 0 0 0
    0 0 1 0 0 0 0
    0 0 0 0 0 0 0
    0 0 0 0 0 0 0
    0 0 0 0 0 0 0
    0 0 0 0 0 0 0
    0 0 0 0 0 0 0
    0 0 0 0 0 0 0
    0 0 0 0 0 0 0];
%%
y=(imdilate(x,b) & acmp);
%%
while(~isequal(x,y))
   x=y;
   y=(imdilate(x,b) & acmp);
   
end
y=y | a;
subplot(1,2,1)
imshow(a);
title('Original Image');
subplot(1,2,2)
imshow(y);
title('Image after performing region filling operation');