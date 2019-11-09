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
