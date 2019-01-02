# Librerías
library(readxl)

# Actualizar cada año
ultimo_anio <- 2018

# Planilla generada a partir de la web (http://www.bcu.gub.uy/Estadisticas-e-Indicadores/Paginas/Cotizaciones.aspx)
archivo <- 'TC_BCU.xlsx'


# Cargar cotización histórica dólar usa billete desde el año 2000
tc <- NULL

for(i in 3:(ultimo_anio - 1997)) {
  tc[[i-2]] <-  file.path('data-raw', archivo) %>%
    read_xlsx(range = "A1:E252", sheet = i) %>%
    filter(is.na(Fecha) != TRUE)
}

tc_bcu <- as.data.frame(tc[[1]])


for(i in 2:(ultimo_anio - 1999)){
  tc_bcu <- tc_bcu %>%
    union_all(tc[[i]] %>%
                as.data.frame)
}

devtools::use_data(tc_bcu, overwrite = TRUE)
