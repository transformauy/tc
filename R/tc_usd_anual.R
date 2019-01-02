#' Cotización anual dólar USA billete
#'
#' Cotización anual histórica dólar USA billete, desde el año 2000 a la fecha.
#' @title TC usd
#' @description Función para cargar cotización anual histórica del dólar usa billete.
#' @keywords usd
#' @export
#' @import dplyr
#'
#' @examples
#' tc_usd_anual()

# Librerías
library(dplyr)


# Tipo de Cambio periodo: anual
tc_usd_anual <- function(){
  tc_usd() %>%
    group_by(año) %>%
    summarise(tc_usd_anual = mean(Venta))
  }
