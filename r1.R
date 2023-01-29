#1. Traga insumos para validação ou refutação das seguintes hipóteses:
#1.1. Ao longo do tempo é possível observar uma mudança na preferência de escolha de medicamento do médico;

# Carregando pacotes
library(tidyverse)
library(ggplot2)
library(zoo)

# Carregando csvs
medicos <- read.csv2('medicos.csv')
membros <- read.csv2('membros.csv')
prescricoes <- read.csv2('prescricoes.csv')
visitados <- read.csv2('visitados.csv')


teste <- filter(prescricoes, prescricoes$ID_MEDICO == '45')
teste2 <- filter(prescricoes, prescricoes$ID_MEDICO == '106')
teste4 <- filter(prescricoes, prescricoes$ID_MEDICO == '106')

interact <- prescricoes %>%
  select(Medicamento_prescrito, Mes_prescricao, ID_MEDICO) %>%
  group_by(Medicamento_prescrito, Mes_prescricao, ID_MEDICO)# %>%
  #summarise(Soma = sum(Medicamento_prescrito))

testando <- as.Date(as.yearmon(prescricoes$Mes_prescricao))
testando <- as.Date(paste(prescricoes$Mes_prescricao, "-01", sep=""))

#Cria coluna de quantidade
prescricoes$quantidade <- table(prescricoes$Medicamento_prescrito)

ggplot(interact, aes(y = Medicamento_prescrito, x = Mes_prescricao, colour = Medicamento_prescrito)) +
  geom_line()

ggplot(prescricoes, aes(x = Mes_prescricao, y = Quantidade, color = Medicamento)) +
  geom_line() +
  geom_point() +
  scale_color_manual(values = c("red", "blue"))


