# Vectores ----------------------------------------------------------------

# un vector es un arreglo unidimensional

# creación de vectores ----------------------------------------------------

# utilizamos la función "combine" dada por c()

  # vector con datos tipo string
    name <- c("Toy Story 1", "Toy Story 2: los juguetes vuelven a la carga", "Toy Story 3", "Toy Story 4")
    class(name)
    typeof(name)
    
  # vector con datos tipo numeric
    punctuation <- c(8.3, 7.9, 8.3, 7.7)
    class(punctuation)
    
  # vector con datos tipo logical
    posterior_2000 <- c(F, F, T, T)
    typeof(posterior_2000)
    
  # vector del elemento de tipo de dato más flexible
    x <- c(2, -1, 3, "cafés", "chocolates", TRUE)
    class(x)
    print(x)
    
    y <- c(2, -1, 3, TRUE)
    class(y)
    print(y)

# seleccionar elementos de un vector --------------------------------------
    
# mediante []
    
  # primer elemento de un vector
    x <- c(2, -1, 3, "cafés", "chocolates", TRUE)
    print(x[1])
    
  # rango de elementos
    print(x[1:4])
    print(x[c(1:4)])
    
  # elemento específico
    print(name[2])
    
  # excepto un elemento
    print(name[-2])
    
  # elementos según una condición
    puntuacionBaja <- punctuation < 8
    print(puntuacionBaja)
    name[puntuacionBaja]

# operaciones aritméticas con vectores ------------------------------------

  