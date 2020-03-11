#Minería de Datos.

#Taller Clase 7. Marzo 9 de 2020.
#Problema 1.

# La base de datos "Boston" contenida en el paquete MASS contiene información para predecir 
# el valor de las casas ("medv")  dependiendo de ciertas caracteríticas del vecindario. 
# Para cargar los datos use:   
  
library(MASS)   

Boston=Boston   

head(Boston)

#Para comparar los modelos, puede usar los últimos 100 datos como test y el resto como train.

#1. Con la metodología de regresión Ridge corra y ajuste el modelo. 
#Compare los  resultados con el mejor modelo lineal que encontró en 
#el taller de la clase   pasada (entre selección exhaustiva, 
#componentes principales o PLS).

#2. Con la metodología de regresión Lasso corra y ajuste el modelo. 
#Revise las   variables seleccionadas por el modelo e interprete 
#los coeficientes resultantes.   Compare los resultados con el 
#mejor modelo lineal que encontró en el taller   de la clase pasada y Ridge.


#Problema 2.

#Use los datos contenidos en la librería ISLR llamados Carseats. Use la variable
#precio (Price) como predictor y las ventas (Sales) como respuesta. Puede usar:
  #######################   

library(ISLR)   

data=Carseats   

head(data)   

x=data$Price[1:300]   

y=data$Sales[1:300]   

plot(x,y) 

#######################


# Use el estimado de caja (con el parámetro "h") que vimos en la primera clase.
# 1. Usando LOOCV encuentre el h óptimo.
# 2. Implemente 10-fold cross-validation y encuentre el h óptimo.
# 3. Con el modelo calibrado, calcule un intervalo de confianza para f*(3), 
# es decir,   el valor esperado de Y dado que x=3.