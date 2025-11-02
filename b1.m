resim = imread("coins.png");
[row, column, band] = size(resim);
for i = 1:row;
    for j = 1:column;
        if resim(i,j) < 128;
            resim(i,j) = 0;
        else
            resim(i,j) = 255;
        end
    end
end
resim = imfill(resim, "holes");
imshow(resim);