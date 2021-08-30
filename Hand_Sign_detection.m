i=imread('1.jpg');
imgray=rgb2gray(i);

y = graythresh(imgray);
z=im2bw(imgray,0.9);

z=~z;
z = imfill(z,'holes');
figure,imshow(z);
[h,w,s]=size(z);
centerw=w/2;
centerh=h/3;

i=h;
z=im2double(z);
y = graythresh(z);
z=im2bw(z,y);

while i>centerh
    for j=1:w
        z(i,j)=0;
        
    end
    i=i-1;
end

z=edge(z,'canny');
se = strel('square', 5);
z = imdilate(z,se);

figure,imshow(z);
[L, num] = bwlabel(z);

num


