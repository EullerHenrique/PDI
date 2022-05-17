#Nome: Euller Henrique Bandeira Oliveira
#Matrícula: 11821BSI210

#1) Implemente o algoritmo de rotulaÃ§Ã£o de componentes conexos visto em aula (nos
#slides) e aplique sobre a imagem binÃ¡ria art8.png. Mostre os resultados na forma da
#imagem art8lab1.png e art8lab2.png


clear('all');
close('all');

img = imread('art8.png');
[x,y] = size(img);

figure;
imshow(img, []);

label = 1;
r = 0;
t = 0;

equi = 0;
k = 1;

p = img;

for i = 1:x
   
    for j = 1:y    
                
      if(p(i,j) == 1)
        
        r = img(i, j-1);
        t = img(i-1,j);
        
        r2 = p(i, j-1);
        t2 = p(i-1, j);
    
        if(r == 0 && t == 0)
        
           p(i,j) = label++;
        
        elseif(r == 1 && t == 0)
            
            p(i,j) = label;
            
        elseif(r == 0 && t==1)
            
            p(i,j) = label;
            
        elseif(r == 1 && t == 1 && r2 == t2)
        
             p(i,j) = r2;
        
        elseif(r == 1 && t == 1 && r2 != t2)
        
            p(i,j) = r2;
            equi(k,1) = r2;
            equi(k,2) = t2;
            k++;
         
         
            
        end
      
      end
      
    end
    
end



figure;
imshow(p, []);


figure;
imshow(p, colormap);

#2) Calcule o número de objetos da imagem clc3.png. Note que antes será necessário
#binarizar a imagem. Para isso, considere um limiar (threshold) de 67, isto é, valores
#acima de 67 na imagem original recebem zero, e os abaixo recebem 1 (o que resulta na
#imagem clc3thr1.png).


img = imread('clc3.png');
[x,y] = size(img);

for i = 1:x
   
    for j = 1:y
      
      if(img(i,j) > 67)
      
        img(i,j) = 1;
        
      else
          
         img(i,j) = 0;
         
      end
      
    end
end


figure;
imshow(img,[]);

label = 1;
r = 0;
t = 0;

equi = 0;
k = 1;


p = img;

for i = 1:x
   
    for j = 1:y    
                
      if(p(i,j) == 1)
        
        if(j > 1)
          r = img(i, j-1);
        end
        
        if(i > 1)
          t = img(i-1,j);
        end
        
        if(j > 1)
          r2 = p(i, j-1);
        end 
       
        if(i>1) 
          t2 = p(i-1, j);
        end
        
        if(r == 0 && t == 0)
        
           p(i,j) = label++;
        
        elseif(r == 1 && t == 0)
            
            p(i,j) = label;
            
        elseif(r == 0 && t==1)
            
            p(i,j) = label;
            
        elseif(r == 1 && t == 1 && r2 == t2)
        
             p(i,j) = r2;
        
        elseif(r == 1 && t == 1 && r2 != t2)
        
            p(i,j) = r2;
            equi(k,1) = r2;
            equi(k,2) = t2;
            k++;
         
        end
      
      end
      
    end
    
end


figure;
imshow(p,[]);


figure;
imshow(p,colormap);


#Número de objetos
[x,y] = size(equi);
x

#3) Descubra qual o comando do matlab que faz rotulação de componentes conexos.
#Aplique o comando do matlab a uma imagem e compare com o seu em termos de
#resultado e tempo de execução.

img = imread('clc3.png');
[x,y] = size(img);

for i = 1:x
   
    for j = 1:y
      
      if(img(i,j) > 67)
      
        img(i,j) = 1;
        
      else
          
         img(i,j) =0;
         
      end
      
    end
end

img_2 = bwlabel(img);

figure;
imshow(img_2, []);



figure;
imshow(img_2, colormap);
