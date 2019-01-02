# tc
Paquete que incluye funciones para cargar cotizaciones del dólar usa billete diarias, mensuales y anuales, del período 2000-2018. 

### - Cotización diaria
Cotización histórica Dólar USA Billete, desde el año 2000 a la fecha. Contiene publicaciones diarias de la web del BCU (https://www.bcu.gub.uy/Estadisticas-e-Indicadores/Paginas/Cotizaciones.aspx)
```
tc_usd()
```

### - Cotización mensual
Cotización mensual histórica dólar USA billete, desde el año 2000 a la fecha. Creada a partir de tc_usd().
```
tc_usd_mensual()
```

### - Cotización anual 
Cotización anual histórica dólar USA billete, desde el año 2000 a la fecha. Creada a partir de tc_usd().
```
tc_usd_anual()
```

## Instalación
```
devtools::install_github('transformauy/tc')
library(tc)
```

## data-raw
Carpeta con funciones y archivos auxiliares para las funciones del paquete.


## data
Carpeta con archivos .rda auxiliares para las funciones del paquete, generados en data-raw.

## Objetos
Archivos disponibles en el paquete:
- tc_bcu: Contiene 4770 cotizaciones diarias del dólar usa billete publicadas entre el Enero de 2000 y el Diciembre de 2018.
