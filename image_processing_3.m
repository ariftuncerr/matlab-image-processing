I = imread("coins.png");
modified_I = I
[row,column,band] = size(I);


for i = 1:row;

    for j=1:column;
        pixel = I(i,j);

        if pixel > 230
           pixel = 255;
           modified_I(i,j) = pixel;
          
        else
            modified_I(i,j) = 0;
        end
    end
    
   
end
figure;
subplot(1,2,1); imshow(I);
subplot(1,2,2); imshow(modified_I);
