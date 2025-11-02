I = imread('image.jpeg');
imcomplement_fun_I = imcomplement(I);

[row,column,band] = size(I);
r_band_I = I(:,:,1);
g_band_I = I(:,:,2);
b_band_I = I(:,:,3);

for i = 1:row;

    for j = 1:column;
        r_band_I(i,j) = 255 - r_band_I(i,j);
        g_band_I(i,j) = 255 - g_band_I(i,j);
        b_band_I(i,j) = 255 - b_band_I(i,j);

    end

end

imcomplement_manuel_I = cat(3,r_band_I,g_band_I,b_band_I);

figure;
subplot(1,3,1); imshow(I); title("I");
subplot(1,3,2); imshow(imcomplement_fun_I); title("fun");
subplot(1,3,3); imshow(imcomplement_manuel_I); title("manuel");






