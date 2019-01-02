\name{tc_usd}
\alias{tc_usd}
\title{
Cotización Dólar USA billete
}
\description{
Cotización histórica Dólar USA Billete, desde el año 2000 a la fecha.
}
\usage{
tc_usd(df)
}
\arguments{
  \item{df}{
}
}
\details{
Hay disponibles 4770 cotizaciones diarias en el período 01/01/2000 - 31/12/2018.
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
function (df)
{
    TC_usd \%>\% na.omit \%>\% mutate(Fecha = dmy(Fecha), mes = month(Fecha),
        año = year(Fecha))
  }
}
