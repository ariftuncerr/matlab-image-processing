coins_original = imread('coins.png');

[row,column,band] = size(coins_original);

coins_mean = coins_original;
coins_median = coins_original;
coins_min = coins_original;
coins_max = coins_original;

kernel_matrix = [1,1,1;
                 1,1,1;
                 1,1,1;];

for i=1 : row-2;

    for j=1: column-2;
        
        %kernele değerleri yaz
        for m=1:3;
            for k=1:3;
                kernel_matrix(m,k)= coins_original(i+m-1,j+k-1);
            end
        end
        coins_mean(i+1,j+1) = mean(kernel_matrix(:));
        coins_median(i+1,j+1) = median(kernel_matrix(:));
        coins_min(i+1,j+1) = min(kernel_matrix(:));
        coins_max(i+1,j+1) = max(kernel_matrix(:));
            
    end

end

subplot(2,3,1); imshow(coins_original); title("orj");
subplot(2,3,2); imshow(coins_max); title("max");
subplot(2,3,3); imshow(coins_min); title("min");
subplot(2,3,4); imshow(coins_mean); title("mean");
subplot(2,3,5); imshow(coins_median); title("median");








