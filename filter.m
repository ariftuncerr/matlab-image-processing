I = imread('64*64_image.jpeg');
min_filter_I = imerode(I);

subplot(1,2,1); imshow(I); title("I");
subplot(1,2,2); imshow(min_filter_I); title("min_filter_I");

