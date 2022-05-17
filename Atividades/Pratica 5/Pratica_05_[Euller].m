%Nome: Euller Henrique Bandeira Oliveira
%Matrícula: 11821BSI210

%Software utilizado: Matlab

clear all;
close all;

%1) A partir da imagem original obtenha as outras imagens conforme descrição


%img 

img = imread('art3.gif');
imshow(img);

se = strel('disk', 11);

img = imopen (img, se);
figure
imshow(img, []);


%img2

img = imread('art2.gif');
figure
imshow(img);

se = strel('rectangle',[9 3]);

img2 = imopen (img, se);
figure
imshow(img2, []);

se = strel('rectangle',[3 9]);

img2 = imopen (img, se);
figure
imshow(img2, []);

%2) Imagem real

[im,map]  = imread('cel4.gif');
img = ind2gray(im, map);
[x, y] = size(img);

figure
imshow(img);

for i = 1:x
   
    for j = 1:y
      
      if(img(i,j) > 210)
      
        img(i,j) = 0;
        
      else
          
         img(i,j) = 255;
         
      end
      
    end
end

figure
imshow(img);

se = strel('disk', 11);

img = imopen (img, se);
figure
imshow(img, []);

