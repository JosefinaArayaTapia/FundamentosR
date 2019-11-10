##EDA con dataset proyecto - Gráficas de dispersión.
##plot (y,X)
plot(mtcars$mpg ~ mtcars$cyl,
     xlab="Cilindros",ylab = "Millas por Galon",
     main="Relacion Cinlindros y millas por Galon")


plot(mtcars$mpg ~ mtcars$hp,
     xlab="Caballos de Fuerza",ylab = "Millas por Galon",
     main="Relacion Caballos de Fuerza y millas por Galon")


##EDA orangeec

plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP,
     xlab="Inversion Educacion (%PIB)",
     ylab = "Desempleo",
     main="Relacion Inversion en Educacion y Desempleo")



plot(orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP,
     xlab="Aporte Economia Naranja al PIB",
     ylab = "PIB Per Capita",
     main="Relacion Economia Naranja y PIB per Capita ")


##EDA Histogramas

gplot(mtcars$hp,
      geom="histogram",
      xlab="Caballos de Fuerza",
      main="Carros Segun Caballos de Fuerza")



ggplot(mtcars,aes(x=hp))+
       geom_histogram(binwidth = 30)+
       labs(x="Caballos de Fuerza",y="Cantidad de Autos",
       title="Caballos de Fuerza en Autos Seleecionados")+
       theme(legend.position = "none")+
       theme(panel.background = element_blank(),
             panel.grid.major = element_blank(),
             panel.grid.minor = element_blank())

ggplot()+geom_histogram(data = mtcars,
                        aes(x=hp),fill="Blue",color="Red",
                        binwidth =20)+
  labs(x="Caballos de Fuerza",y="Cantidad de Autos",
       title="Caballos de Fuerza en Autos Seleecionados")+
  
  xlim(c(80,280))+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


##Orangeec

ggplot()+geom_histogram(data = orangeec,
                        aes(x=orangeec$GDP.PC),fill="Blue",color="Red",
                        binwidth =2000)+
  labs(x="PIB Per Capita",y="Cantidad de Paises",
       title="PIB Per Capita por Pais LATAM")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())



ggplot()+geom_histogram(data = orangeec,
                        aes(x=orangeec$Creat.Ind...GDP),fill="Blue",color="Red",
                        binwidth =1)+
  labs(x="Aporte de Economia Naranja al PIB%",y="Cantidad de Paises",
       title="Aporte de Economia al PIB por Pais LATAM")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())



ggplot()+geom_histogram(data = orangeec,
                        aes(x=orangeec$Internet.penetration...population),fill="red",color="gray",
                        binwidth =5)+
  labs(x="%Penetracion de Internet",y="Cantidad de Paises",
       title="Penetracion % por Pais LATAM")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


##EDA con box plot- ggplot2

boxplot(mtcars$hp,
        ylab="Caballos de Fuerza",
        main="Caballos de Fuerza en Carros mtcars")

ggplot(mtcars,aes(x=as.factor(cyl),y=hp,fill=cyl))+
  geom_boxplot(alpha=0.6)+
  labs(x="Cilindros",y="Caballos de Fuerza", title = "Caballos de Fuerza segun cilindros en mtcars")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot(mtcars,aes(x=am,y=mpg,fill=am))+
  geom_boxplot(alpha=0.6)+
  labs(x="Tipo de Caja",y="Millas por Galom", title = "Millas por galon segun tipo de caja en mtcars")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#Ajustar Etiquetas desde Logicas.
mtcars$am<-factor(mtcars$am,levels = c(TRUE,FALSE),
                  labels = c("Manual","Automatico"))






##Economia Naranja
#Mean -> PROMEDIO

economy <- mean(orangeec$GDP.PC)
economy


# Crear nueva variabale segun columna
#  %>% -> PAsar a 

orangeec <- orangeec %>%
            mutate(Strong_economy=ifelse(orangeec$GDP.PC<economy,
                                         "Por Debajo del Promedio PIB Per Capita",
                                         "Por encima del promedio PIB Per Capita"))


ggplot(orangeec,aes(x=orangeec$Strong_economy,y=orangeec$Creat.Ind...GDP,fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de Pais",y="aporte Economia Naranja", 
       title = "Aporte de Economia Naranja en PIB Paises LATAM con lato y bajo PIB Percapita")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot(orangeec,aes(x=orangeec$Strong_economy,y=orangeec$Internet.penetration...population,fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de Pais",y="Penetracion de Internet", 
       title = "Penetracion de Internet en PIB Paises LATAM con lato y bajo PIB Percapita")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

##Graficas de Dispersion = scatter Plot (X,Y)


ggplot(mtcars,aes(hp,mpg))+
  geom_point()+
  labs(x="Caballas de Fuerza",y ="Millas por Galons",title="Caballos de Fuerza y millas por galon")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())




ggplot(mtcars,aes(wt,hp))+
  geom_point()+
  labs(x="Peso",
       y ="Caball0s de Fuerza",
       title="Potencia y Caballos de Fuerza")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())




ggplot(mtcars,aes(hp,qsec))+
  geom_point(aes(color=am,size=cyl))+
  labs(x="caballos de Fuerza",
       y ="Tiempo en 1/4 de milla",
       title="Tiempo en 1/4 de milla y Caballos de Fuerza")



