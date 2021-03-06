RGB=imread('coins.jpg');
I=rgb2gray(RGB);
BW=edge(I, 'canny');
%figure, imshow(BW);
BI=im2bw(BW,.5);
rad=38;
thresh=rad*pi;
region=[79,1,140,79];
[y0detect,x0detect,Accumulator] = houghcircle(BI,rad,thresh,region);
figure;
imshow(BI);
hold on;
plot(x0detect(:),y0detect(:),'x','LineWidth',2,'Color','yellow');
figure;
imagesc(Accumulator);
