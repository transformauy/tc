\name{tc_usd_anual}
\alias{tc_usd_anual}
\title{
Cotización anual dólar USA billete
}
\description{
Cotización anual histórica dólar USA billete, desde el año 2000 a la fecha.
}
\usage{
tc_usd_anual()
}
\details{
Función para cargar cotización anual histórica del dólar usa billete. Creada a partir de tc_usd().
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
    tc_usd() \%>\% group_by(año) \%>\% summarise(tc_usd_anual = mean(Venta))
  }
}
