################################################################################
###################     #LABORATORIO 08     ####################################
################################################################################
#https://datos.bancomundial.org/indicator/SP.DYN.LE00.IN?locations=ZJ

#******************************************************************************#
#                      Leer datos de excel a R                                 #      
#******************************************************************************#
#==============================================#
# 1. Importar datos de excel con Package       #
#==============================================#

#  Paso I: instalar y cargar el paquete readxl
#install.packages("readxl")
library(readxl)

# Paso II: buscar la ruta del archivo de excel
file.choose()

#  Paso III: Copiar ruta de la consola y guardar en una variable

path<- "C:\\Users\\zunig\\Downloads\\DATA\\datos.xlsx"

# como mirar las hojas de tu excel
excel_sheets(path)

#==============================================#
# 2. importar datos de excel con código de R   #
#==============================================#

# importar caso ideal (dataframe)
casoIdeal = read_excel(path)
casoIdeal

# importar caso medio
casoMedio <- read_excel(path,
                         sheet = 'Hoja2')
casoMedio

# importar caso dificil
CasoFinal <- read_excel(path, 
                         sheet = 'Hoja3',
                         range = 'C4:E19')
CasoFinal
#===================================================#
#  Importar datos de excel con el interfaz RStudio  #
#===================================================#
# ir a File > Import Dataset > From Excel
library(readxl)
datos <- read_excel("C:/Users/zunig/Downloads/DATA/datos.xlsx")
View(datos)

#******************************************************************************#
#                 Leer  datos desde un archivo csv a R                         #
#******************************************************************************#

#===================================#
# 1. importar csv con Package       #
#===================================#
#  Paso I: instalar y cargar el paquete readr

#install.packages("readr")
library(readr)

# Paso II: buscar la ruta del archivo de csv
file.choose()

# Paso III: Copiar ruta de la consola y guardar en variable

RUTACSV="C:\\Users\\zunig\\Downloads\\DATA\\datos.txt"

#===================================#
# 2. importar csv con código de R   #
#===================================#

# Importar datos
data=read.csv(RUTACSV)

# mirar datos
head(data)

# caso no titulo
file.choose()
Ruta2="C:\\Users\\zunig\\Downloads\\DATA\\datos_sinTitulo.txt"
# para agregar nombre
data_name=read.csv(Ruta2, col.names =c( "pais", "anio","esperanza de vida al nacer"))
data_name
#======================================#
# 3. importar csv con interfaz RStudio #
#======================================#
# ir a File > Import Dataset > From csv
library(readr)
datos <- read_csv("C:/Users/zunig/Downloads/DATA/datos.txt")
View(datos)



