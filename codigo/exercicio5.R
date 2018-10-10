#5 - Uma pesquisa de opinião perguntou a 124 pessoas qual o antitérmico preferido entre
#as marcas A, B, C, D e E. Os resultados estão representados na tabela (os dados estão na
#planilha Excel “exercicio5.xls”):
#Construa o programa em R que calcule e gere o gráfico de barras correspondente

# Clean up the area
rm(list = ls())
#
library(readxl)
dados <- read_excel("dados/exercicio5.xls")
View(dados)

#degrade de cores para o grafico
color <- colorRampPalette(c("mediumpurple2","magenta"))
color(5)
barplot(dados$`Nº pessoas`, names.arg = dados$Marcas, main="Exercicio 5 - Marca preferida de antitérmico", xlab="Marcas", ylab="Número de pessoas", col = color(5))
dev.copy(device = jpeg, file = "graficos/exercicio5_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()