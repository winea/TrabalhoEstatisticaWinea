#6 - Em um levantamento realizado em um hospital, 95 pessoas responderam a seguinte
#questão: Como você classifica o atendimento recebido? As possíveis respostas estavam
#classificadas em Péssimo, Ruim, Razoável, Bom ou Excelente. O número de pessoas em
#cada uma dessas classes pode ser encontrado na tabela (os dados estão na planilha
#Excel “exercicio6.xls”):
#Construa o programa em R que calcule e gere o diagrama de Pareto correspondente

# Clean up the area
rm(list = ls())
#

#install.packages("qcc")
library(readxl)
library(qcc)
dados <- read_excel("dados/exercicio6.xls")
View(dados)

tipo <- dados$`Nº pessoas`
names(tipo) <- dados$Qualidade
tipo

#degrade de cores para o grafico
color <- colorRampPalette(c("orangered","palegoldenrod"))
color(5)

pareto.chart(tipo, xlab = "", ylab = "Número de pessoas", ylab2 ="Porcentagem cumulativa", main="Exercicio 6 - Avaliação de atendimento",  col = color(5), plot = TRUE, las =2)

dev.copy(device = jpeg, file = "graficos/exercicio6_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()
