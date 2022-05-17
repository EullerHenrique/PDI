#Nome: Euller Henrique Bandeira Oliveira
#Matrícula: 11821BSI210

# 1) Produza a imagem ‘negativa’ do arquivo ‘im_cells.png’

clear('all');
close('all');

original = imread("im_cells.png");  
 
L = 256;   
  
negativa = L - 1 - original;

figure;
imshow(negativa);
title("Imagem negativa");

#2) Com a imagem negativa, produza a imagem original novamente.

original = negativa - (L - 1) + original;

figure;
imshow(original);
title("Imagem Original");

#3) Mostre lado a lado a imagem original e a negativa. Em qual deles os objetos presentes na
#imagem são melhor percebidos? Justifique.

figure;
subplot(1, 2, 1);  
imshow(original);
title("Imagem Original");
  
subplot(1, 2, 2);
imshow(negativa);
title("Imagem negativa");

#Os objetos são melhor percebidos na imagem negativa, pois na imagem negativa os objetos se destacam mais.

#4) Aplique a imagem uma função logarítmica.

#c = Contraste

c=31.875;
logaritima = c*log2(original+1);

figure;
imshow(logaritima);


#5) Abra a imagem 'pout.tif' e mostre seu histograma. (pode usar função do ambiente)

pkg load image;
hist = imread("pout.tif");

figure;
imhist(hist);  


#6) Equalize a imagem anterior e mostre novamente seu histograma. Mostra a curva de
#transformação (consulte https://www.mathworks.com/help/images/histogram-equalization.
#html) (pode usar função do ambiente)

equi = histeq(hist);


figure;
imhist(equi, 64);


[x,y] = histeq(hist);
figure;
plot((0:255)/255,y);

#7) Implemente o algoritmo de equalização de histograma e aplique a imagem ‘imcells.png’

rk = imread("im_cells.png");  
[x,y] = size(rk);

# n^k
nk = zeros(1,256);

for i = 1:x
    for j = 1:y
      
        #rk(0,0) = 0
        #rk(0,1) = 0
        #rk(1,2) = 0
        #rk(1,3) = 0
        #...
        #
        #nk(0+1)
        #nk(1)
        #nk(1) = nk(1) + 1
        #nk(1) = 0 + 1
        #nk(1) = 1
        #...
         
        nk( rk(i,j) + 1 )++;
    
    end
end

#pr_rk

pr_rk = zeros(1,256);

for i = 1:256
  
    #nk(1) = 378408
    #x = 647
    #y = 647
    #x * y = 418609
    #pr_rk(1) = nk(1) / (x*y)
    #0.9039652754718603
    #...
    
    pr_rk(i) = nk(i) / (x * y);
    
end

#cdf

cdf = zeros(1,256);

for i = 1:256
  
    if i == 1
        #cdf(1) = pr_rk(1)
        #cdf(1) = 0.9039652754718603
        cdf(i) = pr_rk(i);
    
    else
        #cdf(2) = pr_rk(1) + pr_rk(2)
        #cdf(2) = 0.9039652754718603 + 0.003972680950481236
        #cdf(2) = 0.9079379564223415
        #...
        cdf(i) = pr_rk(i-1) + pr_rk(i);
  
    end
    
end

#tr_rk para o intervalo [0,7]

tr_rk = zeros(1,256);
L = 256;

for i = 1:256
    
    #tr_rk(1) = (256-1)*0.9039652754718603
    #tr_rk(1) = 230.5111452453244
    tr_rk(i) = (L-1)*cdf(i);

end


#sk

sk = zeros(1,256);

for i = 1:256
    #tr_rk(1) = 230.5111452453244
    #sk(1) = round(tr_rk(1)
    #sk(1) = 231
    sk(i) = round(tr_rk(i));

end

#ps_sk

ps_sk = zeros(1,256);


for i=1:256
  
  for j=1:256
   
    if(sk(j) == i)
    
      ps_sk(i) += pr_rk(j);
    
    end
  
  end 

end   

  

