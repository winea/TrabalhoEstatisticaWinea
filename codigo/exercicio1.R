#1 - As taxas de juros recebidas por 10 ações durante um certo período foram (medidas em
#porcentagens) 2,59; 2,64; 2,60; 2,62; 2,57; 2,61; 2,50; 2,63; 2,64 (Os dados estão na planilha
#Excel “exercicio1.xls”).
#Faça um programa em R para calcular e gerar os gráficos da média, da mediana, do desvio
#padrão, da variância, do valor mínimo, do valor máximo e dos quartis Q1 e Q3

#instale pacote para poder ler o excell
install.packages("readxl")
#como usar e atribuir valores excell
library(readxl)
#colocar a pasta do projeto como working directory para nao dar erro
exercicio1 <- read_excel("/dados/exercicio1.xls")
#essa fç abaixo permite visualizar a tabela excell 
View(exercicio1)

#pega valores coluna Taxa de juros da tabela e aplica estatistica basica
maximo <- max(exercicio1$'Taxas de juros')
minimo <- min(exercicio1$'Taxas de juros')
media <- mean(exercicio1$'Taxas de juros')
mediana <- median(exercicio1$'Taxas de juros')
desvio <- sd(exercicio1$'Taxas de juros')
variancia <- var(exercicio1$'Taxas de juros')
quartis <- quantile(exercicio1$'Taxas de juros')

#para aparecer os valores atribuidos no console
maximo
minimo
media
mediana
desvio
variancia
quartis

#criar grafico eixos x e y
plot(exercicio1$'Taxas de juros', xlab="Ano", ylab="Taxas de juros", main="Exercicio 1 - Medidas de Posição", las=1, col="magenta", type = "l")
#setar cores diferentes para cada linha
abline(media, 0, col="green")
abline(mediana, 0, col="deepskyblue")
abline(maximo, 0, col="red")
abline(minimo, 0, col="yellow")
#transforma em figura e guarda
dev.copy(device = jpeg, file = "graficos/exercicio1_grafico1.jpeg", width = 600, height = 400, res = 100)
dev.off()

plot(exercicio1$'Taxas de juros', xaxt = "n", yaxt="n", xlim= c(0,10), ylim=c(0,2.7), xlab="Ano", ylab="Taxas de juros", main="Exercicio 1 - Variancia e desvio", las=1, type = "l")
axis(side=1, xaxp = c(0, 10, 10))
axis(side=2, yaxp = c(0, 3, 5))
abline(desvio, 0, col="green")
abline(variancia, 0, col="purple")
dev.copy(device = jpeg, file = "graficos/exercicio1_grafico2.jpeg", width = 600, height = 400, res = 100)
dev.off()

plot(exercicio1$'Taxas de juros', xlab="Ano", ylab="Taxas de juros", main="Exercicio 1 - Quartis Q1 e Q3", las=1, col="magenta", type = "l")
abline(quartis[[1]], 0, col="green")
abline(quartis[[3]], 0, col="deepskyblue")
dev.copy(device = jpeg, file = "graficos/exercicio1_grafico3.jpeg", width = 600, height = 400, res = 100)
dev.off()

boxplot(quartis, pch=15, main="Exercicio 1 - Quartis" , col = "green", pars = list(boxwex = 1))
dev.copy(device = jpeg, file = "graficos/exercicio1_grafico4.jpeg", width = 600, height = 400, res = 100)
dev.off()
