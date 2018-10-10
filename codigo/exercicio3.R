#3 - Numa pesquisa realizada com 100 famílias, levantaram-se as seguintes informações:
#Faça um programa em R para calcular e gerar os gráficos para:
#1. A mediana do número de filhos; e
#2. A moda do número de filhos

# Clean up the area
rm(list = ls())
#

library(readxl)
dados <- read_excel("dados/exercicio3.xlsx")
View(dados)

mediana <- median(dados$'Número de filhos')
mediana
#moda
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
moda <- getmode(dados$'Número de filhos')
moda

plot(dados$`Número de filhos`, xlab="Quantidade total", ylab="Número de filhos", main="Exercicio 3 - Mediana", col="red", las=1, type = "l")
abline(mediana, 0, col="green")
dev.copy(device = jpeg, file = "graficos/exercicio3_grafico1.jpeg", width = 600, height = 400, res = 100)
dev.off()

plot(dados$`Número de filhos`, xlab="Quantidade total", ylab="Número de filhos", main="Exercicio 3 - Moda", col="red", las=1, type = "l")
abline(moda, 0, col="deepskyblue")
dev.copy(device = jpeg, file = "graficos/exercicio3_grafico2.jpeg", width = 600, height = 400, res = 100)
dev.off()


