#' Datos del historial de carga de una batería de Li-Ion
#'
#' Datos del historial de capacidad de carga de una batería de Li-Ion L19M4PC2 con capacidad de fábrica de 80.000 mWh en una Notebook LENOVO 81YT con 505 ciclos de carga. Reporte generado a partir de la instrucción "powercfg /batteryreport" en Windows 11.
#'
#' @format Un data frame con 120 filas y 3 variables:
#' \describe{
#'   \item{desde}{fecha de inicio del período de medición, en el formato año-mes-día}
#'   \item{hasta}{fecha de finalización del período de medición, en el formato año-mes-día}
#'   \item{carga}{carga máxima (mWh) registrada en el período}
#' }
#' @source \url{https://daniellaparada.github.io/IC-datasets-docencia/otros-datasets.html}
"bateria"
