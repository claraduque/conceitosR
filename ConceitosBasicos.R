#-------------------------------------------------------
#           INTRODUÇÃO AO R
# -------------------------------------------------------

# Nome: Maria Clara Duque
# e-mail: clara_duque@poli.ufrj.br


# Tópicos:

# 1 - Conceitos Básicos
# 2 - Importar arquivos e manipulação de dados
# 3 - Gráficos


#*********************************************************
#        TÓPICO 1: CONCEITOS BÁSICOS 
#*********************************************************


# R: programa orientado ao objeto

# Para rodar o código: selecione o código e aperte Ctrl R (novas versões: Ctrl Enter)


# R Reference Card: resumo de várias funções disponíveis no R:
# https://cran.r-project.org/doc/contrib/Short-refcard.pdf


#=========================================================
#                 Atribuição de Variáveis
#=========================================================

# Formas de inicializar a variável:

x <- 10               # Forma mais comum

0.56 -> x             # x é a variável que recebe o valor 0.56;
x = -8                # x é a variável que recebe o valor -8;
assign("x", 2i)       # x é a variável que recebe o imaginário 2i;
"x" = 4               # x será a variável que recebe 4.

#=========================================================
#                 Tipo de Dados
#=========================================================


# (1) Numérico
valor <- 37
valor

VALOR2 <- c(1,2,3,4)      # criar um vetor de números

# (2) Caracteres
st <- "Olá, mundo!"
st

# (3) Lógicos
valor < 9
valor > 9
valor != 3               # != (símbolo de diferente)
valor == 3

valor
mode(valor)           # mode(): Fornece qual o tipo de dado
class(valor)          # class(): Também fornece qual o tipo de dado
length(valor)         # length(): Fornece o tamanho da série
length(VALOR2)


#=========================================================
#                   Tipos de Objetos
#=========================================================

# 1 - Vetores
# 2 - Matrizes
# 3 - Listas
# 4 - DataFrame

# 1 - Vetores
# Armazenar conjunto de valores numéricos ou de caractere sob um mesmo nome. 
# Valores acessados individualmente através de índices
# Não permite diferentes tipos de dados em um mesmo vetor

v1 = c(1,2,3,4,5,6,7,9,10)              # forma 1 de representar vetor
v2 = 1:10                               # forma 2 de representar vetor
v3 = c(1:5,5:1)                         # ordem decrescente: (5:1) - vetor que começa em 5 e termina em 1
v4 = c(0, v3, 0)                        
v5 = c('Joao', 'Maria', 'Beatriz')      # pode-se ter vetores de nomes

v1_1 <- c(v1[5],v1[7],v1[9])            # pode-se formar um novo vetor com elementos de outros vetores


? seq()                                 # para buscar ajuda basta colocar ?função que se deseja procurar sobre
v6 = seq(from=1, to=5)                  # função seq()
v7 = seq(from=1, to=5, by=0.5)
v8 = seq(1, 5, 0.5)                     # seq: basta escrever seq(início,fim,step)

mode(v7)                                # mode(): Fornece qual o tipo de dado
is.vector(v7)                           # is.tipo_do_objeto(objeto): retorna True ou False
length(v7)                              # length(): tamanho do objeto

v7
v7*2                                 # multiplica todos os elementos por 2
v7[-1]                               # retira o elemento indicado na posição [-i] (retira primeiro termo do vetor)
v7[-(1:3)]                           # podem ser retirados um conjunto de valores (retira os três primeiros termos do vetor)
v7[1:3]                              # quando se quer apenas alguns índices do vetor, no caso, os 3primeiros elemeentos de v7
v7[c(1,4,7)]                         # cria um vetor com o primeiro, quarto e sétimo valores de v7


# Função replicação de termos:
?rep()
rep(0,2)                 # repete o número n vezes
rep(2,5)                 # repete o número 2, 5 vezes
rep(1:3,4)               # repete 1,2,3, quatro vezes

# Math Operations
a1 = c(3,4,5,6,7)^2      # quadrado
exp(a1)                  # exponencial de a1
log(a1)                  # log(a1) na base 10
log(a1,2)                # log(a1) na base 2
min(a1)                  # mínimo valor do vetor a1
max(a1)                  # máximo valor do vetor a1
mean(a1)                 # média de a1
median(a1)               # mediana de a1
sd(a1)                   # desvio padrão de a1
quantile(a1)             # quartis -> 0Q; 1quartil; mediana; 3quartil, 4quartil
quantile(a1)[2]             # 1quartil


v1
v1>5                     # True e False dos valores do vetor v1 maiores que 5
v1[v1>5]                 # valores de v1 que são maiores que 5
which.max(v1)            # posição do máximo valor de v1 (posição do 9)
which.min(v1)            # posição do mínimo valor de v1 (posição do 1)
which(v1==9)             # posição do valor 9 no vetor v1 


# 2 - Matrizes
# Os valores são organizados em duas dimensões (linhas e colunas).
# matrix(data, nrow, ncol, dimnames)

? matrix()    

(mat1 <- matrix(1:12,ncol=3))                   # matriz 4x3 preenchida por colunas
(mat2 <- matrix(1:12,ncol=3,byrow=T))           # matriz 4x3 preenchida por linhas. Se byrow = T, matriz é preenchida por linhas
(mat3 <- matrix(1:12,ncol=3,dimnames=list(c("primeiro","segundo","terceiro","quarto"),c(1,2,3))))

mat2
colnames(mat2) <- c('Prim','Seg','Ter')          # nome das colunas em mat2
rownames(mat2) <- c(1,2,3,4)                     # nome das linhas em mat2
mat2

dim(mat2)                                        # número de linhas e colunas da matriz.
dim(mat2)[1]                                     # somente o número de colunas
dim(mat2)[2]                                     # somente o número de linhas
summary(mat2)                                    # opera em cada coluna da matriz como se fossem vetores
summary(as.numeric(mat2))                        # resumo de todos os elementos da matriz 
rowSums(mat2)                                    # soma dos termos das linhas de mat2
colSums(mat2)                                    # soma dos termos das colunas de mat2
matrix(mat1,6,2)                                 # reshape da matriz mat1; os elementos de mat1 são transformados em uma nova matriz (6,2)

mat2[1,1] = 3                                    # modificar o valor da posição 1,1 da matriz mat2

(mat3 <- matrix(0,nrow=3,ncol=4))               # gera matriz de 0 com 3 linhas e 4 colunas
(mat4 <- matrix(NA,nrow=3,ncol=4))              # gera matriz com NA de 3 linhas e 4 colunas

# Matriz identidade:

diag(1,3)   # like eye(3) - matriz identidade com 3 linhas
diag(4,3)   # 4*diag(1,3)


mat2
mat2 * mat2           # multiplicação elemento a elemento
t(mat2)               # Matriz transposta
mat2 %*% t(mat2)      # multiplicação de matrizes

mat2[1,]              # vetor com todos os elementos da primeira linha
mat2[,1]              # vetor com todos os elementos da primeira coluna


# Ex: multiplicando a matriz por 2

(Mat2 <-2 * mat2)


# 3 - Listas
#são usadas para combinar diferentes objetos em um único objeto. 
#Estes objetos podem ser vetores, matrizes, números e/ou caracteres e até mesmo outras listas. 

v <- c(1,2,3)                 # class: numeric
m <- matrix(1:10,nrow = 2)    # class: matrix
df <- mtcars                  # class: data.frame (mtcars é um dataframe oferecido pelo próprio R)

(lista <- list(v,m,df))
(lista.nomeada <- list(amostra.vec = v, exem.matrix = m, exem.df = df))

lista[[1]]                    # primeiro nível da lista
lista.nomeada[1]              # class: list (ao se colocar [], retorna o bloco inteiro, NÃO É VETOR)
lista.nomeada$amostra.vec     # class: numeric (O SÍMBOLO $ retorna um vetor, os termos podem ser acessados individualmente)
lista.nomeada[[1]]            # class: numeric ([[]] retorna um vetor, os termos podem ser acessados individualmente)


# 4 - Data Frame
# É uma tabela que pode armazenar ao mesmo tempo elementos de mais de um tipo
# (ex. números e fatores)
# OBS: os diferentes objetos que serão juntados na tabela devem ter mesma dimensão

var1 <- c(1:16)                                           # vetor com elementos de 1 a 16
var2 <- seq(1, 31, 2)                                     # sequência de 1 a 31 pulando de 2 em 2 
var3 <- rep(LETTERS[1:4],4)                               # repetição das letras do alfabeto ABCD (LETTTERS[1:4]) 4 vezes
(d <- data.frame(V1 = var1, V2 = var2, letra = var3))     # tabela será formada pelos conjuntos x, y e categoria

is.data.frame(d)                  # pergunta lógica, retorna TRUE se for data.frame
summary(d)                        # resumo estatístico das colunas que compoem o data frame
unique(d$letra)                   # quantos caracteres diferentes existem na coluna letra do data frame d


data()                            # ter acesso a todos os datasets disponíveis na biblioteca dataset do R

