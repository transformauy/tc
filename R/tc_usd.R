#' Cotización Dólar USA Billete
#'
#' Cotización histórica Dólar USA Billete, desde el año 2000 a la fecha
#' @title TC usd
#' @description Función para cargar cotización histórica del dólar usa billete, de acuerdo al valor pizarra diario desde el 2000 a la fecha.
#' @keywords usd
#' @export
#' @import dplyr lubridate
#'
#' @examples
#' tc_usd()

# Librerías
library(dplyr)
library(lubridate)

tc_usd <- function(df){
  tc_bcu %>%
    na.omit %>%
    mutate(Fecha = dmy(Fecha),
           mes = month(Fecha),
           año = year(Fecha))
}
