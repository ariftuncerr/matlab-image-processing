I = imread('image.jpeg');

scale_factor = 1.5; 
tx = 50; 
ty = 30;

I_scale_builtin = imresize(I, scale_factor, 'bilinear');

T_scale_matrix = [scale_factor  0              0;
                  0             scale_factor   0;
                  0             0              1];
tform_scale = affine2d(T_scale_matrix');
R_orig = imref2d(size(I));
output_size = size(I_scale_builtin);
R_scale = imref2d(output_size, R_orig.XWorldLimits, R_orig.YWorldLimits);

I_scale_custom = imwarp(I, tform_scale, 'OutputView', R_scale, 'Interp', 'bilinear');



I_trans_builtin = imtranslate(I, [tx, ty], 'OutputView', 'same', 'FillValues', 0);


T_trans_matrix = [1  0  0;
                  0  1  0;
                  tx ty 1];
tform_trans = affine2d(T_trans_matrix'); 

I_trans_custom = imwarp(I, tform_trans, 'OutputView', R_orig, 'FillValues', 0);


figure('Name', 'Geometrik Dönüşüm Sonuçları', 'NumberTitle', 'off');
sgtitle('Ölçekleme ve Taşıma İşlemleri (Hazır vs. Custom Yöntem)'); 
subplot(2, 3, 1);
imshow(I);
title('1. Orijinal Görüntü');

subplot(2, 3, 2);
imshow(I_scale_builtin);
title('2. Hazır Fonksiyon: Ölçekleme (imresize)');

subplot(2, 3, 3);
imshow(I_scale_custom);
title('3. Custom Yöntem: Ölçekleme (affine2d + imwarp)');

subplot(2, 3, 5); 
imshow(I_trans_builtin);
title('4. Hazır Fonksiyon: Taşıma (imtranslate)');

subplot(2, 3, 6);
imshow(I_trans_custom);
title('5. Custom Yöntem: Taşıma (affine2d + imwarp)');