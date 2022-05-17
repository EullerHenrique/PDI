#Nome: Euller Henrique Bandeira Oliveira
#Matrícula: 11821BSI210

#1) Utilizando a imagem relogio.tif faça uma remostragem de seus pixels para 300, 150 e
#72 dpi. Sabe-se que a imagem original possui 1250 dpi

close('all');

#1250 dpi
#3692x2812

img1 = imread('relogio.tif');
subplot(2,2,1);
imshow(img1);
title("1250dpi");

#pkg install -forge image;
pkg load image

#300dpi
#888x675

img2 = imresize(img1, [888 675]);
subplot(2,2,2);
imshow(img2);
title("300dpi");

#150dpi
#444x337

img3 = imresize(img1, [444 337]);
subplot(2,2,3)
imshow(img3);
title("150dpi");


#72dpi 
#213x162

img4 = imresize(img1, [213 162]);
subplot(2,2,4);
imshow(img4);
title("72dpi");


#2) Utilizando a imagem ctskull-256.tif, refaça a quantização de seus pixels utilizando de 7
#a 1 bit(s) por pixel.

q2_img = 0;
nbits = 0;
pos = 0;

function quant(q2_img, nbits, pos)

  [x, y] = size(q2_img);

  #Número de bits
  nb = nbits;

  #Número de níveis quantificadores
  nq = 2^nb;

  lim_inf = 0;
  lim_sup = 256/nq;

  for i = 1: nq
      
      
     if(i > 1)
       
       limites_superiores(i) = limites_superiores(i-1) + lim_sup; 
       limites_inferiores(i) = limites_inferiores(i-1) + lim_sup;
     
     else
        
       limites_superiores(i) = lim_sup;
       limites_inferiores(i) = lim_inf;
     
     end
   
  end 
   
  for i = 1:x
   
    for j = 1:y
      
      xy = q2_img(i,j);
        
       for k = 1:nq
         
          if(xy >= limites_superiores(nq-1) && xy <= 256)
          
           q2_img(i,j) = 256;
           break
         
          elseif(xy <= limites_superiores(k))
        
           q2_img(i,j) = limites_inferiores(k);
           break
           
          end
        
        end
    end
  end
  
  
  subplot(2,2, pos);
  imshow(q2_img);
  title([num2str(nbits) " bits"]);
 
end
  

q2_img = imread('ctskull-256.tif');

figure;

#1 bit

quant(q2_img, 1, 1);

#2 bits

quant(q2_img, 2, 2);

#3 bits

quant(q2_img, 3, 3);

#3 bits

quant(q2_img, 4, 4);

figure;

#5 bits

quant(q2_img, 5, 1);

#6 bits

quant(q2_img, 6, 2);

# 7 bits

quant(q2_img, 7, 3);

#8 bits

subplot(2,2,4);
imshow(q2_img);
title("8 bits");
  
clear('all');


 
 





