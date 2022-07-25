clear all; clc;

img1 = imread('img1.jpg');  % taking image

greenimg1 = img1(:,:,2); % taking the green part of the rgb image
green0img1 = img1 - greenimg1; % subtracting green part or the image from image itself

gry = rgb2gray(green0img1); % turning resulting image to gray value image

binaryImg = gray2binary(gry,10); % turning gray value image to binary image with threshold value of 10

figure; 
subplot(1,4,1);imshow(img1); title('original image');
subplot(1,4,2);imshow(green0img1);title('green extracted image');
subplot(1,4,3);imshow(gry);title('gray image');
subplot(1,4,4);imshow(binaryImg);title('binary image');

strcElem = strel('sphere',3); % creating a sphere structure element with radius 3


img1Final = imopen(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('opened');

img1Final = imfill(img1Final,'holes'); % filling opened image


CC = bwconncomp(img1Final); % used bwconncomp to get number of objects
figure; imshow(img1Final); title('filled image'); % title is the number of objects

[g3,t3] = edge(img1Final,'sobel');
figure; imshow(g3); title('sobel');title(CC.NumObjects); % showing the borders of the result

%%
clear all; clc;

img1 = imread('img2.jpg');  % taking image

greenimg1 = img1(:,:,2); % taking the green part of the rgb image
green0img1 = img1 - greenimg1; % subtracting green part or the image from image itself

gry = rgb2gray(green0img1); % turning resulting image to gray value image

binaryImg = gray2binary(gry,10); % turning gray value image to binary image with threshold value of 10

figure; 
subplot(1,4,1);imshow(img1); title('original image');
subplot(1,4,2);imshow(green0img1);title('green extracted image');
subplot(1,4,3);imshow(gry);title('gray image');
subplot(1,4,4);imshow(binaryImg);title('binary image');

strcElem = strel('sphere',10); % creating a sphere structure element with radius 10


img1Final = imopen(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('opened');



img1Final = imfill(img1Final,'holes'); % filling opened image


CC = bwconncomp(img1Final); % used bwconncomp to get number of objects
figure; imshow(img1Final); title('filled image'); % title is the number of objects

[g3,t3] = edge(img1Final,'sobel');
figure; imshow(g3); title('sobel');title(CC.NumObjects); % showing the borders of the result

%%


clear all; clc;

img1 = imread('img3.jpg');  % taking image

greenimg1 = img1(:,:,2); % taking the green part of the rgb image
green0img1 = img1 - greenimg1; % subtracting green part or the image from image itself

gry = rgb2gray(green0img1); % turning resulting image to gray value image

binaryImg = gray2binary(gry,10); % turning gray value image to binary image with threshold value of 10

figure; 
subplot(1,4,1);imshow(img1); title('original image');
subplot(1,4,2);imshow(green0img1);title('green extracted image');
subplot(1,4,3);imshow(gry);title('gray image');
subplot(1,4,4);imshow(binaryImg);title('binary image');

strcElem = strel('sphere',10); % creating a sphere structure element with radius 10


img1Final = imopen(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('opened');



img1Final = imfill(img1Final,'holes'); % filling opened image


CC = bwconncomp(img1Final); % used bwconncomp to get number of objects
figure; imshow(img1Final); title('filled image'); % title is the number of objects

[g3,t3] = edge(img1Final,'sobel');
figure; imshow(g3); title('sobel');title(CC.NumObjects); % showing the borders of the result



%%
clear all; clc;

img1 = imread('img4.jpg');  % taking image

greenimg1 = img1(:,:,2); % taking the green part of the rgb image
green0img1 = img1 - greenimg1; % subtracting green part or the image from image itself

gry = rgb2gray(green0img1); % turning resulting image to gray value image

binaryImg = gray2binary(gry,10); % turning gray value image to binary image with threshold value of 10

figure; 
subplot(1,4,1);imshow(img1); title('original image');
subplot(1,4,2);imshow(green0img1);title('green extracted image');
subplot(1,4,3);imshow(gry);title('gray image');
subplot(1,4,4);imshow(binaryImg);title('binary image');

% strcElem = strel('sphere',10); % creating a sphere structure element with radius 10
% img1Final = imopen(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
% figure;imshow(img1Final); title('open');

% img1Final = imclose(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
% figure;imshow(img1Final); title('close');



img1Final = imfill(binaryImg,'holes'); % filling opened image
figure; imshow(img1Final); title('filled image'); % title is the number of objects

strcElem = strel('sphere',10); % creating a sphere structure element with radius 10
img1Final = imopen(img1Final,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('open');

CC = bwconncomp(img1Final); % used bwconncomp to get number of objects
[g3,t3] = edge(img1Final,'sobel');
figure; imshow(g3); title('sobel');title(CC.NumObjects); % showing the borders of the result

%%
clear all; clc;

img1 = imread('img5.jpg');  % taking image

greenimg1 = img1(:,:,2); % taking the green part of the rgb image
green0img1 = img1 - greenimg1; % subtracting green part or the image from image itself

gry = rgb2gray(green0img1); % turning resulting image to gray value image

binaryImg = gray2binary(gry,10); % turning gray value image to binary image with threshold value of 10

figure; 
subplot(1,4,1);imshow(img1); title('original image');
subplot(1,4,2);imshow(green0img1);title('green extracted image');
subplot(1,4,3);imshow(gry);title('gray image');
subplot(1,4,4);imshow(binaryImg);title('binary image');

strcElem = strel('sphere',20); % creating a sphere structure element with radius 20

img1Final = imclose(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('closing');

img1Final = imopen(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('opened');



img1Final = imfill(img1Final,'holes'); % filling opened image
figure; imshow(img1Final); title('filled image'); % title is the number of objects


CC = bwconncomp(img1Final); % used bwconncomp to get number of objects
[g3,t3] = edge(img1Final,'sobel');
figure; imshow(g3); title('sobel');title(CC.NumObjects); % showing the borders of the result

%%
clear all; clc;

img1 = imread('img6.jpg');  % taking image

greenimg1 = img1(:,:,2); % taking the green part of the rgb image
green0img1 = img1 - greenimg1; % subtracting green part or the image from image itself

gry = rgb2gray(green0img1); % turning resulting image to gray value image

binaryImg = gray2binary(gry,10); % turning gray value image to binary image with threshold value of 10

figure; 
subplot(1,4,1);imshow(img1); title('original image');
subplot(1,4,2);imshow(green0img1);title('green extracted image');
subplot(1,4,3);imshow(gry);title('gray image');
subplot(1,4,4);imshow(binaryImg);title('binary image');

strcElem = strel('sphere',10); % creating a sphere structure element with radius 10


img1Final = imclose(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('closing');

img1Final = imopen(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('opened');

img1Final = imfill(img1Final,'holes'); % filling opened image


CC = bwconncomp(img1Final); % used bwconncomp to get number of objects
figure; imshow(img1Final); title('filled image'); % title is the number of objects

[g3,t3] = edge(img1Final,'sobel');
figure; imshow(g3); title('sobel');title(CC.NumObjects); % showing the borders of the result

%%
clear all; clc;

img1 = imread('img7.jpg');  % taking image

greenimg1 = img1(:,:,2); % taking the green part of the rgb image
green0img1 = img1 - greenimg1; % subtracting green part or the image from image itself

gry = rgb2gray(green0img1); % turning resulting image to gray value image

binaryImg = gray2binary(gry,10); % turning gray value image to binary image with threshold value of 10

figure; 
subplot(1,4,1);imshow(img1); title('original image');
subplot(1,4,2);imshow(green0img1);title('green extracted image');
subplot(1,4,3);imshow(gry);title('gray image');
subplot(1,4,4);imshow(binaryImg);title('binary image');

strcElem = strel('sphere',15); % creating a sphere structure element with radius 15


img1Final = imopen(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('opened');

img1Final = imfill(img1Final,'holes'); % filling opened image


CC = bwconncomp(img1Final); % used bwconncomp to get number of objects
figure; imshow(img1Final); title('filled image'); % title is the number of objects

[g3,t3] = edge(img1Final,'sobel');
figure; imshow(g3); title('sobel');title(CC.NumObjects); % showing the borders of the result

%%
clear all; clc;

img1 = imread('img8.jpg');  % taking image

greenimg1 = img1(:,:,2); % taking the green part of the rgb image
green0img1 = img1 - greenimg1; % subtracting green part or the image from image itself

gry = rgb2gray(green0img1); % turning resulting image to gray value image

binaryImg = gray2binary(gry,4); % turning gray value image to binary image with threshold value of 4

figure; 
subplot(1,4,1);imshow(img1); title('original image');
subplot(1,4,2);imshow(green0img1);title('green extracted image');
subplot(1,4,3);imshow(gry);title('gray image');
subplot(1,4,4);imshow(binaryImg);title('binary image');

strcElem = strel('sphere',10); % creating a sphere structure element with radius 15


img1Final = imclose(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('closing');
img1Final = imopen(binaryImg,strcElem); % I experimented opening and closing and also dilation and erosion but this is the best result I got 
figure;imshow(img1Final); title('opened');

img1Final = imfill(img1Final,'holes'); % filling opened image
CC = bwconncomp(img1Final); % used bwconncomp to get number of objects
figure; imshow(img1Final); title('filled image'); % title is the number of objects

[g3,t3] = edge(img1Final,'sobel');
figure; imshow(g3); title('sobel');title(CC.NumObjects); % showing the borders of the result


%%
function img2 = gray2binary(img1,val)

[row,column] = size(img1);
img2 = img1;

for i=1:row
    for j=1:column
        pixel = img1(i,j);
        if pixel <= val
            img2(i,j) = 0;
        else
            img2(i,j) = 255;
        end
    end
end



end

