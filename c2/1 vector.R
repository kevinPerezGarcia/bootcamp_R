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
    
  # entre un vector y un escalar
    
    # suma
      punctuation + 2
    
    # resta
      punctuation - 2
  
    # multiplicación
      punctuation * 2
      
    # divisíón
      punctuation / 2
    
  # entre vectores
      
        # vector a operar
          puntuacionPropia <- c(5,6,6,5)
      
    # suma de vectores
      puntuacionPropia + punctuation
    
    # resta de vectores
      punctuation - puntuacionPropia
      
    # multiplicaccion de vectores
      punctuation * puntuacionPropia
      
    # división de vectores
      punctuation / puntuacionPropia
      
# functions ---------------------------------------------------------------

# mean function
  x <- c(2,-2,30,4,8,12)
  print(mean(x))

  # Desafío
    y <- c(12,80,-10,-76)
    print(mean(y))
    
# median
  x <- c(2,-2,30,4,8,12)
  print(median(x))
  
    # Desafío
      y <- c(12,80,-10,-76)
      print(median(y))
      
# mode function creating
  
  get_mode <- function(f) {
    uf <- unique(f)
    tab <- tabulate(match(f,uf))
    uf[tab == max(tab)]
  }
  
  x <- c(2,-5,45,13,-5)
  print(get_mode(x))
  
  x <- c(2,-5,45,13,-5,13,45)
  get_mode(x)
  
  y <- c("cat", "dog", "cat", "pig")
  get_mode(y)
  
# maximun
  x <- c(2,-5,45,13,-5,13,45)
  max(x)  

# minimum
  x <- c(2,-5,45,13,-5,13,45)
  min(x)    

# range
  x <- c(2,-5,45,13,-5,13,45)
  range(x)
  
  max(x) - min(x)
  