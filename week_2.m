% Hafta 2 
I = imread("image.jpeg");

r_band = I(:,:,1);
g_band = I(:,:,2);
b_band = I(:,:,3);


image_gray = rgb2gray(I);

image_manuel_gray(row,colum,band);

for i = 1: row;
    for i = 1: column;
        sum_of_pixel_value = r_band(i,j) + g_band(i,j) + b_band(i,j);
        image_manuel_gray(i,j) = sum_of_pixel_value/3;
    end

end




subplot(3,2,1); imshow(r_band); title("r__band");
subplot(3,2,2); imshow(g_band); title("g__band");
subplot(3,2,3); imshow(b_band); title("b__band");
subplot(3,2,4); imshow(I); title("orjinal");
subplot(3,2,5); imshow(image_gray); title("gray");
subplot(3,2,6); imshow(image_manuel_gray); title("manuel gray");



