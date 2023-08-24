#' Datos de temperatura y uso de EcoBici
#'
#' Datos de temperatura y de uso del sistema EcoBici en la Ciudad de Buenos Aires, Argentina, desde el 4 de junio de 2022, hasta el 1ro de mayo de 2023.
#'
#' @format Un data frame con 333 filas y 7 variables:
#' \describe{
#'   \item{fecha}{fecha, en el formato año-mes-día}
#'   \item{n}{cantidad de usos de bicletas del día, considerando viajes con duración entre 5 y 60 minutos}
#'   \item{tmin}{temperatura mínima (°C) del día}
#'   \item{tmax}{temperatura máxima (°C) del día}
#'   \item{tmed}{temperatura promedio (°C) del día}
#'   \item{dia}{nombre del día}
#'   \item{tipo_dia}{tipo de día (día de semana - fin de semana)}
#' }
#' @source \url{https://github.com/daniellaparada/IC-datasets-docencia/blob/main/fuente/01_regresion/temp-bici.csv}
"tempbici"
