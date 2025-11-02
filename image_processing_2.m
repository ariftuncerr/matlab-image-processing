% cam = webcam

% I = snapshot(cam)

I = imread('kiz_kulesi.jpg');
imshow(I)
% 1. ÖRNEKLEME'NİN SONUCU: Koordinatlar (Boyut) -> Sampling
% 'size' fonksiyonu bize örnekleme ızgarasının (grid) boyutunu verir.
[M, N] = size(I); % M N boyutlu ızgara yerleştir
fprintf('Örnekleme sonucu: %d satır, %d sütunluk bir matris.\n', M, N);

% 2. NİCEMLEME'NİN SONUCU: Değerler (Veri Tipi)
% 'class' fonksiyonu bize nicemleme seviyelerini (veri tipini) söyler.
veri_tipi = class(I);
fprintf('Nicemleme sonucu: Veri tipi %s.\n', veri_tipi);

% Çıktı: Nicemleme sonucu: Veri tipi uint8.
% 'uint8' (unsigned 8-bit integer) 2^8 = 256 seviye demektir (0-255).

new_I = imresize(I,0.05); % grid seviysini 0.05 azaltır


figure;
subplot(1,2,1); imshow(I); title('orjinal'); % m 1 satır, n 2 sütun, 1. pozisyon
subplot(1,2,2); imshow(new_I); title ('0.05'); 