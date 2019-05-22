%%
close all; clear all; clc; 

image1 = imread('image1.jpg');
BIN1 = im2bw(image1, 0.459);
ilosc_pikseli1 = size(BIN1);
piksele1 = ilosc_pikseli1(1)*ilosc_pikseli1(2)
biale1=0;
for k=1:1:ilosc_pikseli1(1)
    for j=1:1:ilosc_pikseli1(2)
        if(BIN1(k,j)==1)
           biale1=biale1+1;
        end
    end 
end
figure, imshow(BIN1)
wynik1=biale1/piksele1*100

image2 = imread('image2.jpg');
BIN2 = im2bw(image2, 0.459);
ilosc_pikseli2 = size(BIN2);
piksele2 = ilosc_pikseli2(1)*ilosc_pikseli2(2)
biale2=0;
for k=1:1:ilosc_pikseli2(1)
    for j=1:1:ilosc_pikseli2(2)
        if(BIN2(k,j)==1)
           biale2=biale2+1;
        end
    end 
end
figure, imshow(BIN2)
wynik2=biale2/piksele2*100

image3 = imread('image3.jpg');
BIN3 = im2bw(image3, 0.5);
ilosc_pikseli3 = size(BIN3);
piksele3 = ilosc_pikseli3(1)*ilosc_pikseli3(2)
figure, imshow(BIN3)


