clc
clear all
close all
%%

[a, map]=imread('q2.jpg');
b=a;
a=(im2double(a));    
%% Sometimes, after a=(im2double(a)); you can use a= aheqb(a);which is quite good for some images . results in soothing contrast.
%%
r = a(:,:,1);    
g = a(:,:,2);
b = a(:,:,3);
%%
l=0.29;  
%% l is value for luminance. Useful values are limited to pixel value..usually workss better bellow 0.5 and sometimes 0.9 is enough.
%%
r1=luminup(r,l);       g1=luminup(g,l);        b1=luminup(b,l);

o=  (cat(3, r1, g1, b1)).^0.80; 
figure, imshowpair(a,  o, 'montage');
 