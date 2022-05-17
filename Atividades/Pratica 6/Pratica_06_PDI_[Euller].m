#Nome: Euller Henrique Bandeira Oliveira
#Matrícula: 11821BSI210

img_color = imread('insitu107598.jpg');
img_gray = rgb2gray(img_color);
imshow(img_gray);

#Otsu na imagem original (convertida para níveis de cinza)

nivel = graythresh(img_gray);
img_bin = im2bw(img_gray,nivel);

figure;
imshow(img_bin);

#Otsu na imagem em níveis de cinza filtrada (algum filtro de suavização que
#você usou em práticas anteriores)

#Filtro de Mediana

img_mediana = medfilt2(img_gray, [7 7]);

#Otsu

nivel = graythresh(img_mediana);
img_bin = im2bw(img_mediana,nivel);

figure;
imshow(img_bin);

#. Há alguma diferença no resultado obtido anteriormente?

  # Sim, o filtro de mediana suavizou a imagem ao remover os ruídos.  

   

