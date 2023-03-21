##%######################################################%##
#                                                          #
####                Laboratorio: Vector                 ####
#                                                          #
##%######################################################%##

# vector numérico ---------------------------------------------------------

  c(1, 2, 3, 5, 8, 13)
  x <- c(12, 6, 67)
  class(x)

# vector de caracteres ----------------------------------------------------

  c("arbol", "casa", "persona")
  caracteres <- c("Madrid", "Barcelona", "Pontevedra", "Murcia")
  class(caracteres) 

# vector de elementos lógicos ---------------------------------------------

  c(TRUE, TRUE, FALSE, FALSE, TRUE)
  logico <- c(TRUE, TRUE, FALSE, TRUE)
  class(logico)
  typeof(logico)

# vector de distintos elementos
  mezcla <- c(TRUE, "Correcto", 8, 2.2)
  mezcla
  class(mezcla)
  typeof(mezcla)
  
  mezcla2 <- c(T, 1, 1.5)
  mezcla2
  class(mezcla2)
  typeof(mezcla2)
  
  mezcla3 <- c(T,1)
  typeof(mezcla3)

# Nombrar vectores --------------------------------------------------------

  # todos los elementos
    mi_vector <- c(naranja = 4, manzana = 6)
    mi_vector
  
    p <- c(2,10)
    setNames(p, c("naranja", "manzana"))
    
  # algunos elementos
    mi_vector2 <- c(4, manzana=6)
    mi_vector2

# Ordenando vectores ------------------------------------------------------

  # sort(): defecto: ascendente
    z <- c(12, 15, 3, 22)
    sort(z)
    
    sort(z, decreasing = TRUE)

  # order()
    z[order(z)]  # Equivalente a sort(z)
    z[order(-z)] # Equivalente a sort(z, decreasing = TRUE)

  # invertir el orden de un vector
    rev(z)

# concatenar vectores -----------------------------------------------------

    a <- c(1,2,3)
    b <- c(4,5,6)
  c <- c(a,b)    
  d <- c(b,a)

# crear vector vacío ------------------------------------------------------

  vacio <- c()
  
  # llenando el vector
  
    # con un bucle
      for(i in 1:10) {
        vacio[i] <- i
      }
      vacio

    # con NAs
      vacio_NA <- rep(NA,5)
      vacio_NA
    
    # con FALSEs
      vacio_NA2 <- vector(length = 5)      
      vacio_NA2

# eliminar un vector ------------------------------------------------------

    vector <- c(1,2,3,4,5)
  rm(vector) 

# comparando dos vectores -------------------------------------------------

    x1 <- c(1,5)
    y1 <- c(4,0)
    x2 <- c(1,5,1)
    y2 <- c(4,0,1,3)
    
  # mediante operadores lógicos
    x1 > y1
    x1 > y2
    x2 > y2 # error
    
    x1 == y1
  
  # inclusion
    x2 %in% y2
    
    # todos los elementos
      all(x1 %in% x2)
  
  # retornar elementos incluidos
    x2[x2 %in% y2]

# secuencias --------------------------------------------------------------

  1:4
  seq(1,4,0.5)
  seq(from=1,to=5,length.out=9)
  rep(1,5)

# vector aleatorio --------------------------------------------------------

  # muestra aleatoria
      set.seed(1) # semilla. Aplicar cada vez
    sample(1:6, size=5, replace=T)

  # distribuciones de probabilidad
      set.seed(1) # semilla
    rnorm(5,mean=0,sd=1)
      set.seed(1) # semilla
    runif(5,min=2,max=10)

# longitud ----------------------------------------------------------------

  vector <- c(1,2,3)
  length(vector)

# acceder a los elementos -------------------------------------------------

  # mediante índices numéricos
      abc <- letters
    
    # primer elemento
      abc[1]
      abc[[1]]
      
    # segundo y tercer elemento
      abc[c(2,3)]
  
    # ubicaciones pares
        n <- length(abc)
      abc[seq(2,n,2)]
      
    # ubicaciones impares
      abc[seq(1,n,2)]
      abc[-seq(2,n,2)]
    
  # mediante operadores condicionales
      temp <- c(22.52, 18.70, 19.61, 22.79, 29.38, 30.19, 33.16, 36.97, 33.29, 28.98, 24.31, 22.43)
      mes <- c("enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre")

      temp>30
    mes[temp>30]
    mes[temp<20 | temp>35]

# agregando elementos -----------------------------------------------------
 
  c("ñ",abc)
  c(abc,"ñ")
    posicion <- which(abc=="n")
  c(abc[1:posicion], "ñ", abc[-(1:posicion)])

# eliminando elementos ----------------------------------------------------
  
    vector <- c("Londres", "Nueva York", "Paris")
  vector[-1]
  vector[c(2,3)]
  
  vector[1]
  vector[-which(vector != "Londres")]  
