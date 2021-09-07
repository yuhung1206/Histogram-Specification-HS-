%-----Matlab Code-----%
clear all; close all; clc;
flowerImg = imread('camellia (mono) 512x512.tif'); %load
[R,C] = size(flowerImg)
% compute original PDF & CDF
edge_vector = [0:256]
figure();
temp = histogram(flowerImg, edge_vector)
title("Original Histogram");
xlabel('gray level(0~255)');  ylabel('number of pixels');
saveas(gcf,'original histogram.jpg');
PDF = temp.Values./(R*C)
CDF = zeros(1,length(PDF))
count = 0
for i = 1:length(PDF)
    count = count + PDF(i)
    CDF(i) = count;
end
% compute specific PDF & CDF
PDF_s = ones(1,length(PDF));
PDF_s(1,1:64) = PDF_s(1,1:64).*1248;
PDF_s(1,193:256) = PDF_s(1,193:256).*1248;
PDF_s(1,65:192) = PDF_s(1,65:192).*800;
% draw picture of histogram
figure(); bar([0:255],PDF_s);
title("Desired histogram");
xlabel('gray level(0~255)');  ylabel('number of pixels');
saveas(gcf,'desired histogram.jpg')
PDF_s(:) = PDF_s./(R*C)
CDF_s = zeros(1,length(PDF_s))
count = 0;
for i = 1:length(PDF_s)
    count = count + PDF_s(i)
    CDF_s(i) = count;
end
% comput Transfer label
it_n = 1;
for i = 1:length(CDF)
    % minimize n for (v_n-s_k)>=0
    while true
        if (CDF_s(it_n)-CDF(i))>=0
            TransLabel(i) = it_n;
            break;
        end
        it_n = it_n + 1;
    end
end
TransLabel = TransLabel - 1; % shift back to 0~255
NewImg = zeros(R,C)
for i = 1:R
    for j = 1:C
        NewImg(i,j) = TransLabel(uint16(flowerImg(i,j))+1); 
% flowerImg:0~255 => Matlab: 1~256
    end
end
figure();  temp = histogram(NewImg, edge_vector)
title("Output Histogram");
xlabel('gray level(0~255)');  ylabel('number of pixels');
saveas(gcf,'Output histogram.jpg');
imwrite(uint8(NewImg), 'OutputImage.jpeg');  close all;

