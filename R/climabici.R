#' Datos de clima y uso de EcoBici
#'
#' Datos de clima y de uso del sistema EcoBici en la Ciudad de Buenos Aires, Argentina, desde el 1 de enero de 2022, hasta el 31 de diciembre de 2022.
#'
#' @format Un data frame con 363 filas y 9 variables:
#' \describe{
#'   \item{fecha}{fecha, en el formato año-mes-día}
#'   \item{n}{cantidad de usos de bicletas del día}
#'   \item{tavg}{temperatura promedio (°C) del día}
#'   \item{tmin}{temperatura mínima (°C) del día}
#'   \item{tmax}{temperatura máxima (°C) del día}
#'   \item{prcp}{nivel de precipitaciones (mm) del día}
#'   \item{dia}{nombre del día}
#'   \item{tipo_dia}{tipo de día (día de semana - fin de semana)}
#'   \item{lluvia}{registro de si la precitación es mayor que 0 o no (llueve - no llueve)}
#' }
#' @source \url{https://github.com/daniellaparada/IC-datasets-docencia/blob/main/fuente/02_regresion_multiple/clima-bici.csv}
"climabici"
