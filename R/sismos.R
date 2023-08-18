#' Datos sísmicos de Argentina
#'
#' Datos de sismos de diferente intensidad y magnitud en la región continental del país (excluyendo Tierra del Fuego) desde el 7 de enero de 2012, hasta el 18 de mayo de 2022.
#'
#' @format Un data frame con 55817 filas y 8 variables:
#' \describe{
#'   \item{Fecha}{fecha del evento sísmico, en el formato año-mes-día}
#'   \item{Hora}{hora del evento sísmico, en el formato hora-minuto-segundo}
#'   \item{Latitud}{latitud del evento registrado}
#'   \item{Longitud}{longitud del evento registrado}
#'   \item{Provincia}{nombre de la provincia del evento registrado}
#'   \item{Percibido}{registro de si la magnitud del evento fue percibida, o no}
#'   \item{Magnitud}{magnitud del sismo en la escala de Richter}
#'   \item{Profundidad}{profundidad (km) registrada del sismo}
#' }
#' @source \url{https://github.com/daniellaparada/IC-datasets-docencia/blob/main/fuente/04_visualizacion/sismos-arg.csv}
"sismos"
