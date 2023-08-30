#' Datos de viviendas en venta
#'
#' Datos de viviendas en venta en Argentina, publicadas en el sitio inmobiliario online "Properatti" durante los años 2013 a 2018. Los datos corresponden a viviendas publicadas a menos 10M de USD y con superficie total cubierta menor a 1000 m2.
#'
#' @format Un data frame con 74714 filas y 11 variables:
#' \describe{
#'   \item{tipo}{tipo de vivienda en venta}
#'   \item{ciudad}{ciudad, municipio (GBA) o barrio (CABA) de la vivienda}
#'   \item{provincia}{provincia (con distinción entre zonas de GBA y CABA)}
#'   \item{lat}{latitud de la ubicación de la vivienda}
#'   \item{lon}{longitud de la ubicación de la vivienda}
#'   \item{precioUSD}{precio publicado (USD) de la vivienda en venta}
#'   \item{sup_tot}{superficie total (m2) de la vivienda}
#'   \item{sup_cub}{superficie cubierta (m2) de la vivienda}
#'   \item{precio_sup_tot}{precio (USD) del m2 según superficie total de la vivienda}
#'   \item{precio_sup_cub}{precio (USD) del m2 según superficie cubierta de la vivienda}
#'   \item{ambientes}{cantidad de ambientes de la vivienda reportados en la publicación}
#' }
#' @source \url{https://daniellaparada.github.io/IC-datasets-docencia/otros-datasets.html}
"viviendas"
