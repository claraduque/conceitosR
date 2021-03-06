#-------------------------------------------------------
#           INTRODU��O AO R
# -------------------------------------------------------

# Nome: Maria Clara Duque
# e-mail: clara_duque@poli.ufrj.br


# T�picos:

# 1 - Conceitos B�sicos
# 2 - Importar arquivos e manipula��o de dados
# 3 - Gr�ficos


#*********************************************************
#        T�PICO 1: CONCEITOS B�SICOS 
#*********************************************************


# R: programa orientado ao objeto

# Para rodar o c�digo: selecione o c�digo e aperte Ctrl R (novas vers�es: Ctrl Enter)


# R Reference Card: resumo de v�rias fun��es dispon�veis no R:
# https://cran.r-project.org/doc/contrib/Short-refcard.pdf


#=========================================================
#                 Atribui��o de Vari�veis
#=========================================================

# Formas de inicializar a vari�vel:

x <- 10               # Forma mais comum

0.56 -> x             # x � a vari�vel que recebe o valor 0.56;
x = -8                # x � a vari�vel que recebe o valor -8;
assign("x", 2i)       # x � a vari�vel que recebe o imagin�rio 2i;
"x" = 4               # x ser� a vari�vel que recebe 4.

#=========================================================
#                 Tipo de Dados
#=========================================================


# (1) Num�rico
valor <- 37
valor

VALOR2 <- c(1,2,3,4)      # criar um vetor de n�meros

# (2) Caracteres
st <- "Ol�, mundo!"
st

# (3) L�gicos
valor < 9
valor > 9
valor != 3               # != (s�mbolo de diferente)
valor == 3

valor
mode(valor)           # mode(): Fornece qual o tipo de dado
class(valor)          # class(): Tamb�m fornece qual o tipo de dado
length(valor)         # length(): Fornece o tamanho da s�rie
length(VALOR2)


#=========================================================
#                   Tipos de Objetos
#=========================================================

# 1 - Vetores
# 2 - Matrizes
# 3 - Listas
# 4 - DataFrame

# 1 - Vetores
# Armazenar conjunto de valores num�ricos ou de caractere sob um mesmo nome. 
# Valores acessados individualmente atrav�s de �ndices
# N�o permite diferentes tipos de dados em um mesmo vetor

v1 = c(1,2,3,4,5,6,7,9,10)              # forma 1 de representar vetor
v2 = 1:10                               # forma 2 de representar vetor
v3 = c(1:5,5:1)                         # ordem decrescente: (5:1) - vetor que come�a em 5 e termina em 1
v4 = c(0, v3, 0)                        
v5 = c('Joao', 'Maria', 'Beatriz')      # pode-se ter vetores de nomes

v1_1 <- c(v1[5],v1[7],v1[9])            # pode-se formar um novo vetor com elementos de outros vetores


? seq()                                 # para buscar ajuda basta colocar ?fun��o que se deseja procurar sobre
v6 = seq(from=1, to=5)                  # fun��o seq()
v7 = seq(from=1, to=5, by=0.5)
v8 = seq(1, 5, 0.5)                     # seq: basta escrever seq(in�cio,fim,step)

mode(v7)                                # mode(): Fornece qual o tipo de dado
is.vector(v7)                           # is.tipo_do_objeto(objeto): retorna True ou False
length(v7)                              # length(): tamanho do objeto

v7
v7*2                                 # multiplica todos os elementos por 2
v7[-1]                               # retira o elemento indicado na posi��o [-i] (retira primeiro termo do vetor)
v7[-(1:3)]                           # podem ser retirados um conjunto de valores (retira os tr�s primeiros termos do vetor)
v7[1:3]                              # quando se quer apenas alguns �ndices do vetor, no caso, os 3primeiros elemeentos de v7
v7[c(1,4,7)]                         # cria um vetor com o primeiro, quarto e s�timo valores de v7


# Fun��o replica��o de termos:
?rep()
rep(0,2)                 # repete o n�mero n vezes
rep(2,5)                 # repete o n�mero 2, 5 vezes
rep(1:3,4)               # repete 1,2,3, quatro vezes

# Math Operations
a1 = c(3,4,5,6,7)^2      # quadrado
exp(a1)                  # exponencial de a1
log(a1)                  # log(a1) na base 10
log(a1,2)                # log(a1) na base 2
min(a1)                  # m�nimo valor do vetor a1
max(a1)                  # m�ximo valor do vetor a1
mean(a1)                 # m�dia de a1
median(a1)               # mediana de a1
sd(a1)                   # desvio padr�o de a1
quantile(a1)             # quartis -> 0Q; 1quartil; mediana; 3quartil, 4quartil
quantile(a1)[2]             # 1quartil


v1
v1>5                     # True e False dos valores do vetor v1 maiores que 5
v1[v1>5]                 # valores de v1 que s�o maiores que 5
which.max(v1)            # posi��o do m�ximo valor de v1 (posi��o do 9)
which.min(v1)            # posi��o do m�nimo valor de v1 (posi��o do 1)
which(v1==9)             # posi��o do valor 9 no vetor v1 


# 2 - Matrizes
# Os valores s�o organizados em duas dimens�es (linhas e colunas).
# matrix(data, nrow, ncol, dimnames)

? matrix()    

(mat1 <- matrix(1:12,ncol=3))                   # matriz 4x3 preenchida por colunas
(mat2 <- matrix(1:12,ncol=3,byrow=T))           # matriz 4x3 preenchida por linhas. Se byrow = T, matriz � preenchida por linhas
(mat3 <- matrix(1:12,ncol=3,dimnames=list(c("primeiro","segundo","terceiro","quarto"),c(1,2,3))))

mat2
colnames(mat2) <- c('Prim','Seg','Ter')          # nome das colunas em mat2
rownames(mat2) <- c(1,2,3,4)                     # nome das linhas em mat2
mat2

dim(mat2)                                        # n�mero de linhas e colunas da matriz.
dim(mat2)[1]                                     # somente o n�mero de colunas
dim(mat2)[2]                                     # somente o n�mero de linhas
summary(mat2)                                    # opera em cada coluna da matriz como se fossem vetores
summary(as.numeric(mat2))                        # resumo de todos os elementos da matriz 
rowSums(mat2)                                    # soma dos termos das linhas de mat2
colSums(mat2)                                    # soma dos termos das colunas de mat2
matrix(mat1,6,2)                                 # reshape da matriz mat1; os elementos de mat1 s�o transformados em uma nova matriz (6,2)

mat2[1,1] = 3                                    # modificar o valor da posi��o 1,1 da matriz mat2

(mat3 <- matrix(0,nrow=3,ncol=4))               # gera matriz de 0 com 3 linhas e 4 colunas
(mat4 <- matrix(NA,nrow=3,ncol=4))              # gera matriz com NA de 3 linhas e 4 colunas

# Matriz identidade:

diag(1,3)   # like eye(3) - matriz identidade com 3 linhas
diag(4,3)   # 4*diag(1,3)


mat2
mat2 * mat2           # multiplica��o elemento a elemento
t(mat2)               # Matriz transposta
mat2 %*% t(mat2)      # multiplica��o de matrizes

mat2[1,]              # vetor com todos os elementos da primeira linha
mat2[,1]              # vetor com todos os elementos da primeira coluna


# Ex: multiplicando a matriz por 2

(Mat2 <-2 * mat2)


# 3 - Listas
#s�o usadas para combinar diferentes objetos em um �nico objeto. 
#Estes objetos podem ser vetores, matrizes, n�meros e/ou caracteres e at� mesmo outras listas. 

v <- c(1,2,3)                 # class: numeric
m <- matrix(1:10,nrow = 2)    # class: matrix
df <- mtcars                  # class: data.frame (mtcars � um dataframe oferecido pelo pr�prio R)

(lista <- list(v,m,df))
(lista.nomeada <- list(amostra.vec = v, exem.matrix = m, exem.df = df))

lista[[1]]                    # primeiro n�vel da lista
lista.nomeada[1]              # class: list (ao se colocar [], retorna o bloco inteiro, N�O � VETOR)
lista.nomeada$amostra.vec     # class: numeric (O S�MBOLO $ retorna um vetor, os termos podem ser acessados individualmente)
lista.nomeada[[1]]            # class: numeric ([[]] retorna um vetor, os termos podem ser acessados individualmente)


# 4 - Data Frame
# � uma tabela que pode armazenar ao mesmo tempo elementos de mais de um tipo
# (ex. n�meros e fatores)
# OBS: os diferentes objetos que ser�o juntados na tabela devem ter mesma dimens�o

var1 <- c(1:16)                                           # vetor com elementos de 1 a 16
var2 <- seq(1, 31, 2)                                     # sequ�ncia de 1 a 31 pulando de 2 em 2 
var3 <- rep(LETTERS[1:4],4)                               # repeti��o das letras do alfabeto ABCD (LETTTERS[1:4]) 4 vezes
(d <- data.frame(V1 = var1, V2 = var2, letra = var3))     # tabela ser� formada pelos conjuntos x, y e categoria

is.data.frame(d)                  # pergunta l�gica, retorna TRUE se for data.frame
summary(d)                        # resumo estat�stico das colunas que compoem o data frame
unique(d$letra)                   # quantos caracteres diferentes existem na coluna letra do data frame d


data()                            # ter acesso a todos os datasets dispon�veis na biblioteca dataset do R

