#Hecho con gusto por Luz Yolanda Rivera.
# Laboratorio - PIVOTAR A LO LARGO

#############################################
#LABORATORIO: Tidy data (datos ordenados) 1##
#############################################
#Prerrequisitos

#Instalar paquete tidyverse y readr
install.packages("tidyverse")
install.packages("readr")

#cargar paquete tidyverse y readr
library(tidyverse)
library(readr)

#cargar datos

library(readr)
tabla1 <- read_csv("Documents/Doctorado/Doctorado Clases/Complejidad Económica/Entregables /semana 3/Laboratorios/Lab 5/ice 2014.csv")

names(tabla1)

#Pivotear tabla "A LO LARGO"
t1_PIVOTANTE = tabla1 %>%
  pivot_longer(cols = c("Km,0" ,  "Km,2"  ,    "Km,4"  ,    "Km,6"  ,    "Km,8"  ,  "Km,10" , "Km,12" ,  "Km,14"  ,  "Km,16"  , "Km,18" ,  "Km,20" ,  "Km,22" ,  "Km,24" , "Km,26" ), names_to = "iteracion", values_to = "ranking" )

#Exportar resultado: tabla ordenada
write.csv(t1_PIVOTANTE, file = "ice_CHARTICULATOR.CSV")

getwd()
setwd("C:/Users/luz/Desktop")

