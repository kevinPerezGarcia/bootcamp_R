### Laboratorio 1

### data types
   
    ### numeric
        print(5)
        class(5)
        print(5.5)
        class(5.5)
    ### logical
        print(TRUE) # TRUE palabra reservada
        class(TRUE)
        print(T)    # T palabra reservada
    ### character
        print("Hola mundo")
        class("Hola mundo")
        print("7.5")
        print("TRUE")

### variables
    
    ### Nombres válidos
        myvar = "Kena"
        myvar <- "Kena"
        my_var = "Kena"
        myVar = "Kena"
        MYVAR = "Kena"        
        myvar2 = "Kena"        
        .myvar = "Kena"        

    ### Nombres inválidos
        2myvar = "Kena"
        my-var = "Kena"
        my var = "Kena"
        _my_var = "Kena"
        my_v@ar = "Kena"
        TRUE = "Kena"
        
    ### Utilidad
        radio = 2   # variable creada
        pi          # variable reservada
        area_circulo = pi * radio^2
        print(area_circulo)
        
### Operadores aritméticos
    print(1+2)
    print(T + T + F)
    print(3 + T + F + T + 5)
    print("a" + 3)
    print(5-2)
    print(5*2)
    print(5/2)
    print(5%%2)     # modulo: residuo
    print(-6%%3)
    print(5%/%2)    # división entera: cociente
    print(2^2)
    print(2**2)
    print(2 + 3 * 5 - 7^2 %% 4 + (5/2)) # jerarquía de las operaciones basada en PENDAS

### Operadores relacionales o de comparación
    print(3<8)          # menor
    print(5<=7)         # menor o igual
    print(F > T)        # mayor
    print("x" >= "y")   # mayor o igual
    print("z" == "a")    # igual
    print(5 != 7)       # diferente

### Operadores lógicos
    print(!(5>7))           # negación
    print(!T)
    print(!0)
    print(!1)
    print(!5)
    print(!-5)    
    print(!"a")    
    print( (5>7) | (5<7) )  # disyunción    
    print( (5>7) & (5<7) )  # conjunción
    