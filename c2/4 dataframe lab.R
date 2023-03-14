##%######################################################%##
#                                                          #
####               laboratorio dataframe                ####
#                                                          #
##%######################################################%##

# crear un dataframe ------------------------------------------------------

  Producto <- c("Zumo","Queso","Yogurt","Manzana")
  Seccion <- c("Bebidas","Productos lácteos","Productos lácteos","Frutas")
  Unidades <- c(3,2,10,5)
  
  x <- data.frame(Producto,Seccion,Unidades)
  print(x)
  
  temp <- c(22.37,19.56,18.5,21.95,29.33,28.19,35.38,36.62,40.03,27.59,22.15,19.85)
  humed <- c(89,87,80,78,80,78,71,69,78,82,85,84)
  precip <- c(69,33.9,37.5,36.6,31.0,16.6,1.2,6.8,36.8,30.8,38.5,22.7)
  mes <- c("enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "setiembre", "octubre", "noviembre", "diciembre")
    
  datos <- data.frame(mes, temperatura = temp, humedad = humed, precipitacion = precip)
  
# crear dataframe vacío
  dataset <- data.frame(mes=character(),temperatura=numeric(),precipitacion=numeric(),humedad=numeric())
  dataset
  
  dataset <- data.frame(matrix(ncol=4,nrow=0))
  
# nombramiento de un dataframe --------------------------------------------

  names(datos)
  names(datos) <- c("Mes", "Temper", "Hum", "Prec")
  names(datos)
  
  colnames(datos) <- c("mounth","temperature","precipitation","humedity")
  names(datos)
  
# mostrar dataframes ------------------------------------------------------

  head(datos)
  tail(datos)
  summary(datos)

# frames de ejemplo -------------------------------------------------------

  data("AirPassengers")
  AirPassengers

# columnas de un dataframe ------------------------------------------------
  
  datos$mounth
  datos[,1]
  datos[,1:3]
  datos[,c("mounth","precipitation")]
  datos[,c(1,2)]

# filas de un dataframe ---------------------------------------------------

  datos[1,]
  datos[1,2]
  datos[2,3]
  datos[1:2,2]
  
# acceder a los datos de un dataframe -------------------------------------

  # función attach
    attach(datos) # acceso directo al dataframe
    temperature
    humedity
    detach(datos) # desacceso
    temperature

# añadir columnas y filas a un dataframe ----------------------------------

  # base de datos de ejemplo
    data(cars)
    head(cars) # muestra 2 columnas
    dim(cars)
    
  # añadiendo columnas
    
    # forma 1
      cars$kph <- cars$speed / 0.62137
      cars$meters <- cars$dist / 3.2808
  
      head(cars) # muestra 4 columnas
      dim(cars)
    
    # forma 2
      kph2 <- cars$speed * 2
      meters2 <- cars$dist * 3
    
      cars <- cbind(cars[,c(1,2)], kph2, meters2)
      head(cars)
      dim(cars)
      
  # añadiendo filas
      
    # puede hacerse con la función "rbind()"

# eliminando columnas y filas ---------------------------------------------

  # quitando columnas
    cars2 <- cars[,-c(1,2)]
    head(cars2)    
    
  # manteniendo columnas
    cars3 <- cars[,c("kph2","meters2")]
    head(cars3)    

# ordenar datos -----------------------------------------------------------

  # base de datos de ejemplo
    data(mtcars)
    head(mtcars)    
    dim(mtcars)    
    class(mtcars)
    
  # ordenar respecto a una variable
    
    # orden ascendente
      head(mtcars$hp)   # valores
      order(mtcars$hp)  # orden numerico de los valores
      
      orden_mtcars <- order(mtcars$hp)
      head(orden_mtcars)
      mtcars_ordenado <- mtcars[orden_mtcars,]
      
      head(mtcars_ordenado)
      dim(mtcars_ordenado)
    
    # orden descendente
      orden_mtcars_desc <- order(-mtcars$hp)
      mtcars_ordenado_desc <- mtcars[orden_mtcars_desc,]
      
      head(mtcars_ordenado_desc)
      dim(mtcars_ordenado_desc)
        
# filtrar datos -----------------------------------------------------------

  sub_mtcars <- subset(mtcars, cyl == 6 & hp > 115)      
  head(sub_mtcars)      

  sub_mtcars2 <- subset(mtcars, cyl == 6 & hp > 115, select=c(mpg,cyl,disp))  
  head(sub_mtcars2)