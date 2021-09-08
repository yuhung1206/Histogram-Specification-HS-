%-----Matlab Code-----%
clear all; close all; clc;

ImageFile = 'test.jpg';
Img = imread(ImageFile);  % load file

% Process to each color layer [R,G,B] (1)~(4)
[Img(:,:,1)] = HS_func( Img(:,:,1) );
[Img(:,:,2)] = HS_func( Img(:,:,2) );
[Img(:,:,3)] = HS_func( Img(:,:,3) );

%-----Export new Image-----%(5)
imwrite(uint8(Img), 'OutputImageX.jpeg');  close all;