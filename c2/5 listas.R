##%######################################################%##
#                                                          #
####                Laboratorio. Listas                 ####
#                                                          #
##%######################################################%##

# crear -------------------------------------------------------------------

  # dado algunos objetos
    x <- c(11,12,13,14,15)
    y <- c("rojo","azul")
    z <- matrix(1:12,ncol = 4)
    
  lista <- list(x,y,z)
  lista
  
  # lista vacía
    lista_vacia <- list()
    lista_vacia
    
    # -> con longitud
      lista_vacia_longitud3 <- vector("list", length = 3)
      lista_vacia_longitud3
      
  # lista anidada
      lista_anidada <- list(lista, lista_nombrada)

# clase -------------------------------------------------------------------

  class(lista)
  class(lista_vacia)
  class(lista_vacia_longitud3)
  class(lista_anidada)
  
# longitud ----------------------------------------------------------------

  length(lista)
  length(lista_vacia)
  length(lista_anidada)
    
# nombrar elementos -------------------------------------------------------

  lista_nombrada <- list(A=x,B=y,C=z)
  lista_nombrada
  
# extraer elementos -------------------------------------------------------

  # primer elemento
    lista_nombrada[1]   # retorna un elemento de la lista
    lista_nombrada[[1]] # retorna un vector
    
    # -> primer elemento
      unlist(lista_nombrada[1])[1]  # deslistar el elemento de la lista
      lista_nombrada[[1]][1]        # dado que primero se retorna un vector
      
  # tercer elemento
    lista_nombrada[[3]]

    # -> segunda columna
      lista_nombrada[[3]][,2]
      
      # -> primer elemento
        lista_nombrada[[3]][,2][1]
        lista_nombrada[[3]][1,2]
        
  # segundo elemento
      length(lista_anidada)
      lista_anidada
    lista_anidada[[2]]
    
    # -> primer elemento
      lista_anidada[[2]][1]   # retorna un elemento de la lista
      lista_anidada[[2]][[1]] # retorna un vector
      
      # -> tercer elemento
        lista_anidada[[2]][[1]][3]
        lista_anidada[[2]]$A[3]
# añadir elementos --------------------------------------------------------

    length(lista)
    lista
  lista[[4]] <- data.frame(X=c(8,5,3), Y=c(7,9,1))
    length(lista)
    lista

# reemplazar elementos ----------------------------------------------------

  # primer elemento
    lista[[1]] <- c(4,1,9)
    length(lista)
     lista

# eliminar elementos ------------------------------------------------------

    length(lista)
    lista
  lista[[2]] <- NULL
    lista    
    length(lista)

    lista    
  lista[-2]
  lista[-c(1,2)]

# unir listas -------------------------------------------------------------

  # forma 1 -> append()
    lista_unidad_forma1 <- append(lista, lista)
    lista_unidad_forma1
    
    lista_unida2_forma1 <- append(lista, lista_nombrada)
    lista_unida2_forma1
  
  # forma 2 -> c()
    lista_unida_forma2 <- c(lista, lista_nombrada)
    lista_unida_forma2
    
  # forma 3 -> do.call()
    lista_unida_forma3 <- do.call(c, list(lista, lista_nombrada))
    lista_unida_forma3
    
  # juntar listas con elementos de mismos nombres
      lista_nombrada
      lista_nombrada2 <- lista_nombrada
    lista_nombrada_mismos <- c(lista_nombrada, lista_nombrada2)
      lista_nombrada_mismos
      lista_nombrada_mismos$A

# comparar elementos entre listas -----------------------------------------

  # dadas dos listas
    lista
    lista2 <- lista
      lista2[[1]] <- c(1,2,3)
      lista2[[4]] <- c(1)
      
  # elementos comunes
    intersect(lista, lista2)
    
  # elementos diferentes
    
    # de la primera lista respecto a la segunda
      setdiff(lista, lista2) # vacío
      
      # devolviendo valores lógics
        lista %in% lista2
        
          #install.packages("useful")
          library(useful)
        #compare.list(lista,lista2) # requiere listas de misma longitud
      
    # de la segunda lista respecto a la primera
      setdiff(lista2, lista)
      
      # devolviendo valores lógics
        lista2 %in% lista

# conversión de listas ----------------------------------------------------

    lista
  # en vector
    unlist(lista)
    unlist(lista, use.names = F)
    unlist(lista[[1]])
    
    lista_anidada
    unlist(lista_anidada)
    
  # en matrix
    matrix(unlist(lista), nrow=length(lista), byrow=T)

  # en dataframe
    data.frame(matrix(unlist(lista), nrow=length(lista), byrow = T))
    