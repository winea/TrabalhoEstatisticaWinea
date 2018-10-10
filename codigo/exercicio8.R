#8 - Um hospital tem o interesse em determinar a altura média dos pacientes de uma
#determinada área e relacioná-la com a incidência de determinada anomalia ortopédica.
#Foram selecionados 80 pacientes e as alturas (em m) podem ser encontradas na tabela (os
#dados estão na planilha Excel “exercicio8.xls”):
#Construa o programa em R que calcule e gere a tabela de distribuição de frequências por
#intervalos de classes e o histograma correspondente.
# Clean up the area
rm(list = ls())
#

library(readxl)
dados <- read_excel("dados/exercicio8.xls")
View(dados)

frequencia <- table(dados$`Altura dos pacientes`)
frequencia

color <- colorRampPalette(c("lightgoldenrod","lightgreen"))
color(10)
hist(dados$`Altura dos pacientes`, xlab = "Altura", ylab = "Frequência", main="Exercicio 8 - Altura dos pacientes",  col = color(10))
dev.copy(device = jpeg, file = "graficos/exercicio8_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()

