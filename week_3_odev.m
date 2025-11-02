kernel_matrix = [1,1,1;
                 1,1,1;
                 1,1,1;];

example_matrix = [1,2,3,4,5,6,7,8,9;
                  10,11,12,13,14,15,16,17,18;
                  19,20,21,22,23,24,25,26,27;
                  1,2,2,4,5,6,7,8,9;
                  10,11,12,13,14,15,16,17,18;
                  19,20,21,22,23,24,25,26,27;
                  1,2,3,4,5,6,7,8,9;
                  10,11,12,13,14,15,16,17,18;
                  19,20,21,22,23,24,25,26,27;];

new_matrix = example_matrix; % kopya bir matrix oluştur. new_matrix in merkez değerlerini değiştriceğiz.
[row,column] = size(example_matrix);


% example matrisin kenar elemeanları hariç hepsini dolaş
for i=1 : row-2;

    for j=1:column-2;
        
        %kernele değerleri yaz
        for m=1:3;
            for k=1:3;
                kernel_matrix(m,k)= example_matrix(i+m-1,j+k-1); % example matrixteki sırası gelen 9 elemanı kernele kopyala

            end
        end
        new_matrix(i+1,j+1) = min(kernel_matrix(:)); % tüm değerlerden min bul, max, median, mean de olabilir.
            
    end

end
display(example_matrix);
display(new_matrix);








