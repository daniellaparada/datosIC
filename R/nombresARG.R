#' Datos históricos de nombres en Argentina
#'
#' Datos del histórico de nombres registrados ante el Registro Nacional de las Personas en Argentina desde 1922 y hasta 2015, agrupado por nombre y año, para nombres de más de 100 ocurrencias anuales. Se preprocesó la base de [datos.gob.ar](https://datos.gob.ar/dataset/otros-nombres-personas-fisicas/archivo/otros_2.1) excluyendo, entre otros, casos de múltiples nombres (especialmente, aquellos muy antiguos). La librería [guaguas](https://github.com/rivaquiroga/guaguas) contiene un dataset similar, pero para el caso chileno.
#'
#' @format Un data frame con 76803 filas y 3 variables:
#' \describe{
#'   \item{nombre}{nombre registrado}
#'   \item{cantidad}{cantidad de nombres registrados en el año}
#'   \item{anio}{año de registro}
#' }
#' @source \url{https://github.com/daniellaparada/IC-datasets-docencia/blob/main/fuente/04_visualizacion/sismos-arg.csv}
"nombresARG"
