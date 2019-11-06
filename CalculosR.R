#Fundamentos R

#Saber Tipos de Datos del DataSet
str(mtcars)

##En Consola ?mtcart -> Sirve para saber que significa cada variable en el dataset (desde import)

##Saber clase del tipo de dato
class(mtcars$vs)
class(mtcars$am)


##cambiar tipo de datos

mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)

summary(mtcars)

##Transformacion de datos

wt <- (mtcars$wt * 1000) /2
wt

mtcars.new <- transform(mtcars,wt=wt*1000/2)
summary(mtcars.new)


#Un vector es un ente matemático que se usa para guardar información de un mismo tipo, 
#dentro de R se crean los vectores con la función c.

#sum es una función que como su nombre lo indica, retorna la suma de los valores que le indiquemos.

Tiempo_Platzi <- c(25,5,10,15,10)
Tiempo_lecturas <- c(30,10,5,10,15)
Tiempo_aprendizaje <- Tiempo_Platzi + Tiempo_lecturas
Tiempo_aprendizaje


dias_aprendizaje <- c("Lunes","Martes","Miercoles","Jueves","Viernes")
dias_aprendizaje

Total_Tiempo_Platzi <- sum(Tiempo_Platzi)
Total_Tiempo_Platzi 


#Matriz

Tiempo_matrix <- matrix(c(Tiempo_Platzi,Tiempo_lecturas),
                        nrow = 2, byrow = TRUE)

dias <- dias_aprendizaje
tiempo <-c("Tiempo_platzi","Tiempo_Lecturas")

colnames(Tiempo_matrix)<- dias
rownames(Tiempo_matrix) <-tiempo

Tiempo_matrix
colSums(Tiempo_matrix)

#add fila

final_matrix <- rbind(Tiempo_matrix,c(10,15,30,5,0))
final_matrix
colSums(final_matrix)


#add col
final_matrix_col <- cbind(final_matrix,c(10,15,30))
colnames(final_matrix_col)<- c("Lunes","Martes","Miercoles","Jueves","Viernes","Sabado")
final_matrix_col
colSums(final_matrix_col)



final_matrix_col[1,5]


#Operadores Logicos 
#Buscar < 6 en CyL
mtcars[mtcars$cyl<6,]





#-------- DATA SET ECONOMIA NARANJA

str(orangeec)

##Herramienta estadistica - Resumen del DATA SET por variable
summary(orangeec)
#Operadores Logicos 
orangeec[orangeec$GDP.PC>=15000,]
orangeec[orangeec$Creat.Ind...GDP<=2,]

#Para hacer una selección de elementos de un vector, matriz o data frame podemos usar la función subset.


new_orangeec <- subset(orangeec,orangeec$Internet.penetration...population>80
                       & orangeec$Education.invest...GDP>=4.5) 

new_orangeec

new_orangeec <- subset(orangeec,orangeec$Internet.penetration...population>80
                       & orangeec$Education.invest...GDP>=4.5,
                       select = Creat.Ind...GDP) 

new_orangeec
##Renombrar Columna con libreria PLYR
rename(orangeec,c("Creat.Ind...GDP"="AporteEcNja"))
