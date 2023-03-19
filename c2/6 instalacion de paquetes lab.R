##%######################################################%##
#                                                          #
####        Laboratorio: Instalación de paquetes        ####
#                                                          #
##%######################################################%##

#'La instalación de paquetes se puede realizar mediante código o la interfaz de RStudio

# desde CRAN --------------------------------------------------------------
  
  # un paquete
    install.packages("readxl")

  # varios paquetes
    install.packages(c("ggplot2", "dplyr", "readxl")) # ojo con c(...)
    
# instalación de paquetes locales -----------------------------------------

  #install.packages("ruta\\nombre_del_paquete.extension", repos = NULL, type = "source")

# Paquete "devtools" ------------------------------------------------------
    
  install.packages("devtools")          # permite descargar paquetes desve varias fuentes. Vea sus opciones
    
  # forma 1
    library(devtools)                   # cargamos el paquete
    install_github("tidyverse/ggplot2") # "nombre_de_la_cuenta/nombre_del_repositorio"
    install

  # forma 2
    devtools::install_github("tidyverse/ggplot2") # :: permite llamar funciones desde un paquete sin la necesidad de cargarlo

# documentación de un paquete ---------------------------------------------
  
  library(ggplot2) # requiere previamente cargar el paquete
  help(ggplot2)
    