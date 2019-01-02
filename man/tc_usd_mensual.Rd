\name{tc_usd_mensual}
\alias{tc_usd_mensual}
\title{
Cotización mensual dólar USA billete
}
\description{
Cotización mensual histórica dólar USA billete, desde el año 2000 a la fecha.
}
\usage{
tc_usd_mensual()
}
\details{
Función para cargar cotización mensual histórica del dólar usa billete.
}
\value{
}
\references{
https://www.bcu.gub.uy/Estadisticas-e-Indicadores/Paginas/Cotizaciones.aspx
}
\author{
Observatorio Productivo - Transforma Uruguay
}
\note{
}
\seealso{
}
\examples{
## The function is currently defined as
function ()
{
    tc_usd() \%>\% group_by(año, mes) \%>\% summarise(tc_usd_mensual = mean(Venta))
  }
}
