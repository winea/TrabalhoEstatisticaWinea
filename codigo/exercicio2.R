#2 - Para facilitar um projeto de ampliação da rede de esgoto de uma certa região de uma
#cidade, as autoridades tomaram uma amostra de tamanho 50 dos 270 quarteirões que
#compõem a região e foram encontrados os seguintes números de casas por quarteirão (os
#dados estão na planilha Excel “exercicio2.xls”):
#a) Construir uma tabela de frequências;
#b) Calcular as medidas de posição e as medidas de dispersão;
#c) Faça um programa em R para calcular e gerar os gráficos.

# Clean up the area
rm(list = ls())
#
#como usar e atribuir valores excell
library(readxl)
dados <- read_excel("dados/exercicio2.xls")
View(dados)

#a) Tabela de frequências com histograma
freq <- table(dados$'Casas')
freq
hist(dados$Casas)

#estatistica basica b)Medidas de posição
media <- mean(dados$Casas)
media
mediana <- median(dados$'Casas')
mediana
#Definição de Moda (Mo): é o valor que mais aparece num conjunto de dados.
#"subset” is used to filter the data in a data frame based on the criteria you set
moda <- subset(table(freq),table(freq)==max(table(freq)))
moda


#b) Medidas de disperção
desvio <- sd(dados$'Casas')
desvio
variancia <- var(dados$'Casas')
variancia
quartis <- quantile(dados$'Casas')
quartis

plot(dados$Casas, xlab="Quantidade total", ylab="Número de casas por quarteirão", main="Exercicio 2 - Media, mediana, moda, desvio e variancia",col="red", las=1, type = "l")
abline(media, 0, col="green")
abline(mediana, 0, col="deepskyblue")
abline(moda, 0, col="purple")
abline(desvio, 0, col="yellow")
abline(variancia, 0, col="red")
dev.copy(device = jpeg, file = "graficos/exercicio2_grafico1.jpeg", width = 600, height = 400, res = 100)
dev.off()

boxplot(quartis , pch=15, main="Exercicio 2 - Quartis" , col = "lightblue", pars = list(boxwex = 1))
dev.copy(device = jpeg, file = "graficos/exercicio2_grafico2.jpeg", width = 600, height = 500, res = 100)
dev.off()
