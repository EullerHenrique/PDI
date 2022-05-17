#Nome: Euller Henrique Bandeira Oliveira
#Matrícula: 11821BSI210

clear('all');
close('all');

#A. Filtro da média com os seguintes tamanhos de máscara diferentes na seguinte
#imagem: sta2.png.

[im,map]  = imread('sta2.png');
img = ind2gray(im, map);

#i) 3×3

size_mask = 3;
mask = ones(size_mask)/size_mask.^ 2;
img2 = imfilter(img, mask, 'replicate');
figure;
imshow(img2);

#ii) 7×7

size_mask = 7;
mask = ones(size_mask)/size_mask.^ 2;
img2 = imfilter(img, mask, 'replicate');
figure;
imshow(img2);

#iii) 3×3 aplicado 3x na imagem

size_mask = 3*3;
mask = ones(size_mask)/size_mask.^ 2;
img2 = imfilter(img, mask, 'replicate');
figure;
imshow(img2);

#B. Filtro Gaussiano para diferentes valores de desvio padrão (?) e tamanho de
#máscara para as seguintes imagens: ben2.png e sta2noi2.png. (imagem com ruido
#sal e pimenta)
#i) ? = 1.0 (kernel size 5×5).
#ii) ? = 2.0 (kernel size 9×9).
#iii) ? = 4.0 (kernel size 15×15).


# i) ? = 1.0 (kernel size 5×5).

[im, map] = imread('ben2.png');
img = ind2gray(im, map);

img2 = imsmooth(img,"Custom Gaussian", 1, 5);
figure;
imshow(img2);

[im, map] = imread('sta2noi2.png');
img = ind2gray(im, map);

img2 = imsmooth(img,"Custom Gaussian", 1, 5);
figure;
imshow(img2);

#ii) ? = 2.0 (kernel size 9×9).

[im, map] = imread('ben2.png');
img = ind2gray(im, map);

img2 = imsmooth(img,"Custom Gaussian", 2, 9);
figure;
imshow(img2);

[im, map] = imread('sta2noi2.png');
img = ind2gray(im, map);
img2 = imsmooth(img,"Custom Gaussian", 2, 9);
figure;
imshow(img2);

#iii) ? = 4.0 (kernel size 15×15).

[im, map] = imread('ben2.png');
img = ind2gray(im, map);
i
mg2 = imsmooth(img,"Custom Gaussian", 4, 15);
figure;
imshow(img2);

[im, map] = imread('sta2noi2.png');
img = ind2gray(im, map);

img2 = imsmooth(img,"Custom Gaussian", 4, 15);
figure;
imshow(img2);

#C. Filtro de Mediana com os seguintes tamanhos de máscara para a imagem:
#sta2noi1.png. (imagem com ruido sal e pimenta)

[im, map] = imread('sta2noi1.png');
img = ind2gray(im, map);
figure;
imshow(img);

#i) 3x3

img2 = medfilt2(img, [3 3]);
figure;
imshow(img2);

#ii) 7x7

img2 = medfilt2(img, [7 7]);
figure;
imshow(img2);


#2. Implemente em Matlab (ou Octave) e aplique os seguintes filtros de realce

[im, map] = imread('cln1.gif');
img = ind2gray(im, map);

#A. Roberts na seguinte imagem: cln1.gif.

img2 = edge(img, 'roberts');
figure;
imshow(img2);

#B. Sobel na seguinte imagem: cln1.gif.

# i) somente derivada na direção x.

img2= edge(img, 'sobel', [], 'horizontal');
figure;
imshow(img2);

# ii) somente derivada na direção y.

img2= edge(img, 'sobel', [], 'vertical');
figure;
imshow(img2);

#C. Laplaciano na seguinte imagem: cln1.gif.

laplacian = fspecial("laplacian");
img2 = imfilter(img, laplacian);
figure;
imshow(img2);

#D. Unsharp masking na seguinte imagem: cln1.gif.

unsharp = fspecial("unsharp");
img2 = imfilter(img, unsharp);
figure;
imshow(img2);

#E. Highboost filtering (escolher um k) na seguinte imagem: cln1.gif.

highboost = fspecial("gaussian");
img2 = imfilter(img, highboost);
figure;
imshow(img2);

#F. Sobel na seguinte imagem: ufo2.gif.

[im, map] = imread('ufo2.gif');
img = ind2gray(im, map);
[x,y] = size(img);

# i) somente o filtro.

sobel = fspecial("sobel");
img2 = imfilter(img, sobel);
figure;
imshow(img2);

# ii) filtro seguido de uma limiarização (tente 150).

for i = 1:x
   
    for j = 1:y
      
      if(img2(i,j) > 150)
      
        img2(i,j) = 255;
        
      else
          
         img2(i,j) = 0;
         
      end
      
    end
end

figure;
imshow(img2);

#G. Sobel na seguinte imagem: ufo2noi2.gif. (imagem com ruido gaussiano)

# i) somente o filtro.

[im, map] = imread('ufo2noi2.gif');
img = ind2gray(im, map);
[x,y] = size(img);

sobel = fspecial("sobel");
img2 = imfilter(img, sobel);
figure;
imshow(img2);

# ii) filtro seguido de uma limiarização (tente 150)


for i = 1:x
   
    for j = 1:y
      
      if(img2(i,j) > 150)
      
        img2(i,j) = 255;
        
      else
          
         img2(i,j) = 0;
         
      end
      
    end
end

figure;
imshow(img2);
    


