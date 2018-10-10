#9 - Em um hospital foram coletados os salários (em salários mínimos) de 36 funcionários.
#Os resultados estão dispostos na tabela (os dados estão na planilha Excel “exercicio9.xls”):
#Construa o programa em R que calcule e gere a distribuição de frequências em intervalos
#de amplitude 2 e o histograma correspondente.

rm(list = ls())
library(readxl)
dados <- read_excel("dados/exercicio9.xls")
View(dados)

maximo <- max(dados$Salários)
maximo
minimo <- min(dados$Salários)
minimo
#minimo = 4, maximo = 24, amplitude = 2
brk<-seq(4,24,2)
brk

classes<-c("4-6", "6-8", "8-10", "10-12", "12-14", "14-16", "16-18", "18-20","20-22", "22-24")

frequencia <- table(cut(dados$Salários, breaks=brk, labels=classes, right=F))
frequencia

# Use terrain.colors
#barplot(1:5, col=terrain.colors(5))
# Use topo.colors
#barplot(1:5, col=topo.colors(5))
# Use cm.colors
#barplot(1:5, col=cm.colors(5))

hist(dados$Salários,breaks=brk,right=F,main="Exercicio 9 - Histograma de amplitude 2", xlab = "Salários", ylab = "Frequência", xaxt = "n", yaxt="n", xlim= c(4,24), ylim=c(0,8),  col=topo.colors(10))
axis(side=1, xaxp = c(4,24,10))
axis(side=2, yaxp = c(0, 8, 8))

dev.copy(device = jpeg, file = "graficos/exercicio9_grafico1.jpeg", width = 600, height = 500, res = 100)
dev.off()
