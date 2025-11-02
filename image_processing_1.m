I = imread('kiz_kulesi.jpg');

imshow(I); % matris olarak değerini gösterir

pixel = I(13,14); % 13. sütun 14. satırdaki pixel değer
disp(pixel);
imshow(pixel);

new_area = I(500:1000, 500:1603); % 500.ile 1000 sütun, 500.ile 1603. satır
disp(new_area);
