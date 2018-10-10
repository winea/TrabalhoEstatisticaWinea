#7 - Foram contabilizados o número de pessoas que foram atendidas em um dia em diversas
#áreas de um hospital. Os resultados obtidos podem ser encontrados na tabela (os dados
#estão na planilha Excel “exercicio7.xls”)
#Construa o programa em R que calcule e gere o gráfico de barras correspondente

# Clean up the area
rm(list = ls())
#
library(readxl)
dados <- read_excel("dados/exercicio7.xls")
View(dados)

#degrade de cores para o grafico
color <- colorRampPalette(c("deepskyblue","green"))
color(5)
#grafico de barras
barplot(dados$Atendimento, names.arg = dados$Áreas, main="Exercicio 7 - Atendimento por área do hospital",  ylab="Número de pessoas", las = 2,  col = color(5))
dev.copy(device = jpeg, file = "graficos/exercicio7_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()
