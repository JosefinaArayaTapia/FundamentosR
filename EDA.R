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





