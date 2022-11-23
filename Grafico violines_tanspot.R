rm(list=ls())
setwd("C:/Users/ggb_c/OneDrive/COLPOS/Doctorado/Investigación GS/BGLR/50 CV/Grafico de Violines")
dir()
TanSpot2=read.csv("Agrupamiento_TanSpot_correlacion2.csv")
library(ggplot2)
ggplot(TanSpot2, aes(x = Modelo, y = Precision, fill = Modelo)) +
  geom_violin(alpha = 0.5) +
  theme(legend.position = "none")

ggplot(TanSpot2, aes(x = Modelo, y = Precision, fill = Modelo)) +
  geom_violin(alpha = 0.5) +
  labs(title="Precisión de la predicción para mancha bronceada",x="Modelos",y="Precisión")+
  geom_point() +
  theme_classic()+
  theme(legend.position = "none")



ggplot(TanSpot2, aes(x = Modelo, y = Precision, fill = Modelo)) +
  geom_violin(alpha = 0.5) +
  theme(legend.position = "none")+
  geom_boxplot(width = 0.2)+
  theme_classic()+ 
  theme(legend.position = "none")

####Grafico violines Plotly####
library(plotly)
df=read.csv("Agrupamiento_TanSpot_correlacion2.csv")

fig <- df %>%
  plot_ly(
    x = ~Modelo,
    y = ~Precision,
    split = ~Modelo,
    type = 'violin',
    box = list(
      visible = T
    ),
    meanline = list(
      visible = F
    )
  ) 

fig <- fig %>%
  layout(
    title='Precision de la prediccion para mancha bronceada',
    xaxis = list(
      title = "Modelos"
    ),
    yaxis = list(
      title = "Correlacion de Pearson",
      zeroline = F
    )
  )

fig
