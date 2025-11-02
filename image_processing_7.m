I = imread('image.jpeg');

% hazır fonkisyonlar ile işlemler
I_fun_scaled = imresize(I,1.5);
I_fun_rotated = imrotate(I,50);
rect = [10,20,20,30];
I_fun_croped = imcrop(I,rect);
I_croped = I(10:20,20:30);
translate = [20,10];
I_fun_translated = imtranslate(I,translate);

% manuel işlemler
% shearing hazır fonkisyonu yoktur
sv  = 0.1;
sh  = 0.3;
shear = [1,sh,0;
         sv,1,0;
         0,0,1];
shear_affined = affine2d(shear'); % transpozu verilir
I_manuel_sheared = imwarp(I,shear_affined);

% manuel translate
tx = 20;
ty = 10;
trans = [1,0,0;
         0,1,0;
         tx,ty,1];
trans_affined = affine2d(trans'); % transpozu verilir ?? verince hata alıyorum
I_manuel_translated = imwarp(I,trans_affined);

%manuel scaling
cx = 1.5;
cy = 1.5;

scale = [cx,0,0;
         0,cy,0;
         0,0,1];
scale_affined = affine2d(scale');
I_manuel_scaled = imwarp(I,scale_affined);

% manuel rotate

theta = 50;
cosx = cosd(theta);
sinx = sind(theta);

rotate = [cosx,sinx,0;
         -sinx,cosx,0;
         0,0,1];
rotate_affined = affine2d(rotate');
I_manuel_rotated = imwarp(I,rotate_affined);


subplot(5,2,1); imshow(I_fun_scaled); title("fun scale");
subplot(5,2,2); imshow(I_manuel_scaled); title("manuel scale");


subplot(5,2,3); imshow(I_fun_rotated); title("fun rotate");
subplot(5,2,4); imshow(I_manuel_rotated); title("manuel rotate");


subplot(5,2,5); imshow(I_fun_translated); title("fun translated");
subplot(5,2,6); imshow(I_manuel_translated); title("manuel translated");


subplot(5,2,7); imshow(I_fun_rotated); title("fun rotate");
subplot(5,2,8); imshow(I_manuel_rotated); title("manuel rotate");

subplot(5,2,9); imshow(I_manuel_sheared); title("Shear");












