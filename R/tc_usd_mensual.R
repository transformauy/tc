#' Cotización mensual dólar USA billete
#'
#' Cotización mensual histórica dólar USA billete, desde el año 2000 a la fecha.
#' @title TC usd
#' @description Función para cargar cotización mensual histórica del dólar usa billete.
#' @keywords usd
#' @export
#' @import dplyr
#'
#' @examples
#' tc_usd_mensual()

# Librerías
library(dplyr)


# Tipo de Cambio periodo: mensual
tc_usd_mensual <- function(){
  tc_usd() %>%
    group_by(año, mes) %>%
    summarise(tc_usd_mensual = mean(Venta))
  }
