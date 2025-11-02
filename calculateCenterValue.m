function value = calculateCenterValue(matris,choice)
temp = matris(1,1); % min ve max hesaplamada gerekli
    for i=1 : 3;
        for j=1: 3;
            if choice == 0; % min
                if temp > matris(i,j);
                    temp = matris(i,j);
                end
            elseif choice == 1 ;% max
                if temp < matris(i,j);
                    temp = matris(i,j);
                end
            elseif choice == 2; % mean
                temp = (temp + matris(i,j))/9;
            else % median
                median
            end
        end
        
    end
    value = temp;
    return
end
