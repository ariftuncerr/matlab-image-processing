image = imread('coins.png');

level = graythresh(image);
[row,column,band] = size(image); 
binary = imbinarize(image);

binary_filled = imfill(binary,'holes');


e1 = binary_filled;
e1(:,column+1) = 0; %sadece 301 üncü sütundakileri siyah yap

e2(1:246,1) = 0;
e2(1:246,2:301) = binary_filled;

result = e1-e2;


figure;
subplot(2,4,1); imshow(binary); title('binary');
subplot(2,4,2); imshow(binary_filled); title('binary_filled');
subplot(2,4,3); imshow(e1); title('e1');
subplot(2,4,4); imshow(e2); title('e2');
subplot(2,4,5); imshow(result); title('result');



