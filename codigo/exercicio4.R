#4 - Considere as informações contidas na tabela (os dados estão na planilha Excel
#“exercicio4.xls”) acerca dos salários de 20 funcionários de um hospital. Faça
#uma distribuição de frequências e o gráfico histograma correspondente em R.

# Clean up the area
rm(list = ls())
#

library(readxl)
dados <- read_excel("dados/exercicio4.xls")
View(dados)

#Tabela de frequências absolutas
freq <- table(dados$'Salários')
freq
#degrade de cores para o grafico
color <- colorRampPalette(c("yellow","red"))
color(7)
hist(dados$'Salários', xlab="Quantidade de salários mínimos", ylab="Número de indivíduos com o salário", main="Exercicio 4 - Histograma", col = color(7))
dev.copy(device = jpeg, file = "graficos/exercicio4_grafico1.jpeg", width = 600, height = 400, res = 100)
dev.off()