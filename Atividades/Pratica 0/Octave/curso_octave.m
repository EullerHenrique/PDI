/*

Formatação de Dados Numéricos

Comando Descrição
format short 4 dígitos decimais.
format long 14 dígitos decimais.
format short e Notação científica com 4 dígitos decimais.
format long e Notação científica com 15 dígitos decimais.
format short g 5 dígitos no total.
format long g 16 dígitos no total.
format bank 2 dígitos decimais.


Funções Elementares

sqrt(x) Raiz quadrada
exp(x) Exponencial (ex
)
abs(x) Valor absoluto (módulo)
log(x) Logaritmo natural (ln)
log2(x) Logaritmo base 2
log10(x) Logaritmo base 10
factorial(x)

Fatorial de x (x!).
x deve ser inteiro positivo.

Funções Trigonométricas

sin(x) Seno de x
cos(x) Cosseno de x
tan(x) Tangente de x
cot(x) Cotangente de x

*colocar x em radianos.

Funções Trigonométricas Inversas

asin(x) Arco seno de x
acos(x) Arco cosseno de x
atan(x) Arco tangente de x
acot(x) Arco cotangente de x

*colocar x em radianos.

Funções Trigonométricas Hiperbólicas

sinh(x) Seno hiperbólico de x
cosh(x) Cosseno hiperbólico de x
tanh(x) Tangente hiperbólica de x
coth(x) Cotangente hiperbólica de x

*colocar x em radianos.

Funções de Arredondamento

round(x) Arredonda para o inteiro mais próximo.
fix(x) Arredonda para o inteiro positivo imediatamente menor.
ceil(x) Arredonda para o inteiro positivo imediatamente maior.
floor(x) Arredonda para o inteiro negativo imediatamente menor.
rem(x,y) Retorna o resto da divisão x por y.

sign(x)

Função sinal. Retorna:
1 (se x > 0)
-1(se x < 0)
0 (se x = 0)

Variáveis predefinidas

ans -> Assume o valor da última expressão não atribuída a uma variável especificada.
pi -> Aproximação do número π
e -> Aproximação do número e
inf -> Infinito
i -> 0+1i
j -> O mesmo que i
NaN -> Abreviação de Not-a-Number. Usando
quando o Octave não pode determinar um
valor numérico válido. Por exemplo: 0/0.

Comandos úteis para variáveis

clear -> Apaga da memória todas as variáveis
clear x y z -> Apaga apenas da memória as variáveis x y z 
who -> Exibe uma lista de variáveis declaradas/ ativas na memória.
whos -> Exibe uma lista de variáveis declaradas/ ativas na memória, com o respectivo tamanho em bytes e a classe de armazenamento.

Vetores

[3 8 7 5]
ans = 3 8 7 5 

[0:5:50]
ans= 0 5 10 15 20 25 30 35 40 45 50

linspace(0,50)
ans =

 Columns 1 through 4:

    0.00000    0.50505    1.01010    1.51515

 Columns 5 through 8:

    2.02020    2.52525    3.03030    3.53535

 Columns 9 through 12:

    4.04040    4.54545    5.05051    5.55556

 Columns 13 through 16:

    6.06061    6.56566    7.07071    7.57576

 Columns 17 through 20:

    8.08081    8.58586    9.09091    9.59596

 Columns 21 through 24:

   10.10101   10.60606   11.11111   11.61616

 Columns 25 through 28:

   12.12121   12.62626   13.13131   13.63636

 Columns 29 through 32:

   14.14141   14.64646   15.15152   15.65657

 Columns 33 through 36:

   16.16162   16.66667   17.17172   17.67677

 Columns 37 through 40:

   18.18182   18.68687   19.19192   19.69697

 Columns 41 through 44:

   20.20202   20.70707   21.21212   21.71717

 Columns 45 through 48:

   22.22222   22.72727   23.23232   23.73737

 Columns 49 through 52:

   24.24242   24.74747   25.25253   25.75758

 Columns 53 through 56:

   26.26263   26.76768   27.27273   27.77778

 Columns 57 through 60:

   28.28283   28.78788   29.29293   29.79798

 Columns 61 through 64:

   30.30303   30.80808   31.31313   31.81818

 Columns 65 through 68:

   32.32323   32.82828   33.33333   33.83838

 Columns 69 through 72:

   34.34343   34.84848   35.35354   35.85859

 Columns 73 through 76:

   36.36364   36.86869   37.37374   37.87879

 Columns 77 through 80:

   38.38384   38.88889   39.39394   39.89899

 Columns 81 through 84:

   40.40404   40.90909   41.41414   41.91919

 Columns 85 through 88:

   42.42424   42.92929   43.43434   43.93939

 Columns 89 through 92:

   44.44444   44.94949   45.45455   45.95960

 Columns 93 through 96:

   46.46465   46.96970   47.47475   47.97980

 Columns 97 through 100:

   48.48485   48.98990   49.49495   50.00000


linspace(0,50,10)
ans =

 Columns 1 through 4:

    0.00000    5.55556   11.11111   16.66667

 Columns 5 through 8:

   22.22222   27.77778   33.33333   38.88889

 Columns 9 and 10:

   44.44444   50.00000

a=4
b=2
c=8

v = [a*3,a+b,c/b]
v = 12 6 4

Matriz

[1 4 7; 6 9 2; 5 12 1]
ans =

    1    4    7
    6    9    2
    5   12    1
    
zeros(3,4)
ans =

   0   0   0   0
   0   0   0   0
   0   0   0   0
   
ones(7,9)
ans =

   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1
   1   1   1   1   1   1   1   1   1

eye(10)
ans =

Diagonal Matrix

   1   0   0   0   0   0   0   0   0   0
   0   1   0   0   0   0   0   0   0   0
   0   0   1   0   0   0   0   0   0   0
   0   0   0   1   0   0   0   0   0   0
   0   0   0   0   1   0   0   0   0   0
   0   0   0   0   0   1   0   0   0   0
   0   0   0   0   0   0   1   0   0   0
   0   0   0   0   0   0   0   1   0   0
   0   0   0   0   0   0   0   0   1   0
   0   0   0   0   0   0   0   0   0   1

Transposição 

v=[6 7 11 9 43 38]
v = 6 7 11 9 43 38
v'
ans= 
  6
  7 
  11
  9
  43
  38
  
a = [4 5 6; 2 7 5; 9 5 -1]

>> a = [4 5 6; 2 7 5; 9 5 -1]
a =

   4   5   6
   2   7   5
   9   5  -1

>> a'
ans =

   4   2   9
   5   7   5
   6   5  -1
  
Referência

v
v =
  6 7 11 9 43 38

v(5)
ans = 43  

a
a =

   4   5   6
   2   7   5
   9   5  -1

a(2,3)
ans = 5

v
v =
  6 7 11 9 43 38
  
v(2:5)
  7 11 9 43
  
a
a =

   4   5   6
   2   7   5
   9   5  -1

a(:,2)  
ans =

   5
   7
   5
   
a(3,:)
ans =

   9   5  -1
   
a(:,2:3)
ans=
  5 6
  7 5
  5 -1
  
a(1:2,:)
ans=
  4 5 6
  2 7 5

a(2:3, 2:3)
ans=
  7 5
  5 -1
  
a(1:2, 1:2)
ans= 4 5
     2 7

b = [10:-1:4;ones(1,7);2:2:14;zeros(1,7)]
b =

   10    9    8    7    6    5    4
    1    1    1    1    1    1    1
    2    4    6    8   10   12   14
    0    0    0    0    0    0    0
    
b(3,6)
ans=12

Adicionando elementos

v(5) = 11
v = 
  4 5 6 3 11
  
v(6:10)=[4 3 2 5 6]
v = 
  4 5 6 3 11 4 3 2 5 6
  
v(15)=3
v = 
  4 5 6 3 11 4 3 2 5 6 0 0 0 0 3

m = [3 5 4: 7 9 4; 2 7 4]
m = 
  3 5 4
  7 9 1
  2 7 4

m(:,4) = [6 7 8]
m = 
  3 5 4 6
  7 9 1 7
  2 7 4 8

m(4, :) = [2 19 6 5] 
m =
  3 5 4 6
  7 9 1 7
  2 7 4 8
  2 19 6 5

Removendo elementos

v
v = 
  4 5 6 3 11 4 3 2 5 6 0 0 0 0 3

v(5) = []
v = 
  4 5 6 3 4 3 2 6 0 0 0 0 3

v(6:14) = []
v = 
  4 5 6 3 4

m
m =
  3 5  4 6
  7 9  1 7
  2 7  4 8
  2 19 6 5
  
m(:, 3) = []
m = 
  3 5 6
  7 9 6
  2 7 8
  2 19 5
  
  
m(2,:) = []
m =
  3 5  6
  2 7  8
  2 19 5
  
--------------
length(v) 

Retorna o número de elementos do vetor v.

>> v=[4 3 6 7];
>> length(v)
ans = 4


size(A)

Retorna um vetor linha [m, n], onde m e n representam a dimensão (m x n) da matriz A.

>> A=[4 3 6 7;4 5 2 5; 3 4 1 6];
>> size(A)
ans =
3 4

reshape(A,m,n)

Rearranja uma matriz A com r linhas e s colunas para m linhas e n colunas. r vezes s deve ser igual numericamente igual a m vezes n.

A =
4 3 6 7
4 5 2 5
3 4 1 6

>> reshape(A,4,3)
ans =
4 5 1
4 4 7
3 6 5
3 2 6

diag(v)

Quando v é um vetor, cria uma matriz quadrada contendo os elementos de v na diagonal principal.

>> v=[3 9 1 2];
>> diag(v)
ans =

Diagonal Matrix
3 0 0 0
0 9 0 0
0 0 1 0
0 0 0 2

diag(A)

Quando A é uma matriz, cria um vetor coluna a partir dos elementos na diagonal principal.

>> A=[3 4 1; 7 4 9; 4 1 2]
A =
3 4 1
7 4 9
4 1 2

>> diag(A)
ans =
3
4
2

----------------  
length(v)
ans = 5

size(v)
ans =
  3 3

c = [3 5 6; 1 3 7]
c = 
  3 5 6
  1 3 7

// c = 2*3 = 6
// c = 3*2 = 6
reshape(c, 3, 2)
c = 
  3 3 
  1 6
  5 7
  
diag(v)
ans =

Diagonal Matrix

    4    0    0    0    0    0
    0    5    0    0    0    0
    0    0    6    0    0    0
    0    0    0    3    0    0
    0    0    0    0   11    0
    0    0    0    0    0    3

diag(m)
ans = 
  3 
  7
  5
  
Strings  (vetor de caracteres)

x = 'Programa: '
x = Programa:

x(11:16) = 'octave'
x = Programa: octave

x(11:16)=[]
x = Programa:
 
info = char('nome: ', 'joao','idade','22')
    
info =

nome:       (matriz 4x6)
joao
idade:
22


v=[1 2 3 4 5]
v = 
  1 2 3 4 5 

u = [5 4 3 2 1]
u =
  5 4 3 2 1

a=[2,3,4;5,6,7;8,9,0]
a =
  2 3 4
  5 6 7
  8 9 0

b=[0 9 8; 7 6 5; 4 3 2]
b =
  0 9 8
  7 6 5
  4 3 2

Adição de matrizes

v+u  
ans = 
  6 6 6 6 6

v+2
ans =
  3 4 5 6 7  
  
a+b=
  2  12 12
  12 12 12
  12 12 2  

a+1
ans=
  3 4 5
  6 7 8
  9 10 1  
  
Subtração de matrizes

v-u
ans= -4 -2 0 2 4

u-1
ans=
  4 3 2 1 0
  
a-b=
  2  -6 -4
 -2   0  2
  4   6 -2    

b-1
ans=
  -1 8 7
   6 5 4
   3 2 1
  
Multiplicação de matrizes

A=[1 2 3; 4 5 6; 7 8 9]

A=
  1 2 3
  4 5 6
  7 8 9

B=[9 8 7; 6 5 4; 3 2 1]
B= 
  9 8 7
  6 5 4
  3 2 1

Elemento por elemento


v = [1 3 5]
v =
  1 3 5

u = [2 4 6]
u =
   2 4 6

s = dot(u,v) //Produto escalar
s = 44 // 1*2+3*4+5*6

v*2
ans=
  2 6 10

A.*B  
ans=
   9   16   21
   24   25   24
   21   16    9

Matriz por matriz


A*B
/*
   Para uma multiplicação de matrizes ocorrer o número de colunas da primeira
   matriz tem que ser igual ao número de linhas da segunda matriz
  (1*9)+(2*6)+(3*3)= 30   (1*8)+(2*5)+(3*2)=24  (1*7)+(2*4)+(3*1)=18
  (4*9)+(5*6)+(6*3)= 84   (4*8)+(5*5)+(6*2)=69  (4*7)+(5*4)+(6*1)=54
  (7*9)+(8*6)+(9*3)= 138  (7*8)+(8*5)+(9*2)=114 (7*7)+(8*4)+(9*1)=90

  */  

  ans=
  30 24 18
  84 69 54
  138 114 90
  
B*A
ans=
  90 114 138
  54 69 84
  18 24 30
  

Divisão de matrizes

Matriz por matriz


-------------------------------------

A = [4,-2,6; 2 8 2; 6 10 3]
A =
  4 -2 6
  2  8 2
  6 10 3
 
B=[8;4;0]
B=
  8
  4
  0

Se o det(A) != 0
  inv(A) existe
Caso contrário
  inv(A) não existe
  ou seja
  a matriz é singular
  
//A^-1 B == A \B == inv(A) * B
X = A \ B (modelo coluna) 
X = -1.80488
     0.292668
     2.63415
     
--------------------------------------     
     
-------------------------------
     
A = A' (matriz transposta)
   4 2 6
  -2 8 10
   6 2 3 

B= B'
  8 4 0
  
//B*A^-1 == B/A == inv(B) * A
  
X = B/A (modelo linha)
X = -1.80488 0.292668 2.63415

---------------------------------------
A=A'
  4 -2 6
  2  8 2
  6 10 3
 
B=B'
B=
  8
  4
  0
  
//inv -> Matriz inversa ??
X = inv(A)*B 
X =   -1.80488
      0.292668
      2.63415
 
Elemento por elemento 
 
A=[8 16 80; 44 32 4; 6 26 18]
A= 
  8 16 80
  44 32 4
  6 26 18

B = A/2
B = 
  4 8 40
  22 16 2
  3 13 9

C = [2;1;2]
C = 
  2
  1
  2
D=A./C
D = 
  4 8 40 
  44 32 4
  3 13 9

  



   
   
*/