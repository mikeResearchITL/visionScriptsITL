%% Leer imágenes
i1 = imread("02_L.bmp");
i2 = imread("01_L.bmp");

load pupilaMat.mat
%% Mostrar imagenes
figure
subplot(131)
imshow(i1)
subplot(132)
imshow(i2)
subplot(133)
imshow(I)
%% Canales de intensidad
i1R = i1(:,:,1);
i1G = i1(:,:,2);
i1B = i1(:,:,3);

IR = I(:,:,1);
IG = I(:,:,2);
IB = I(:,:,3);

subplot(231)
imshow(i1R)
subplot(232)
imshow(i1G)
subplot(233)
imshow(i1B)
subplot(234)
imshow(IR)
subplot(235)
imshow(IG)
subplot(236)
imshow(IB)

%% Operaciones aritméticas
Inew = IB+IG;

figure
imshow(Inew)

%% Converti imagenes a escala de grises
Igray = rgb2gray(I);
figure
imshow(Igray)

%% convertir a blanco y negro
iBW = imbinarize(Igray,0.1);
iBWGB = imbinarize(Inew,0.1);
figure
subplot(131)
imshow(iBW)
subplot(132)
imshow(iBWGB)
subplot(133)
imshowpair(iBW,iBWGB)