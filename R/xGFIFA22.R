#' Datos de xG y xGA para los jugadores del mundial FIFA 2022
#'
#' Datos resumen de goles esperados (xG) y de goles esperados asistidos (xGA) para los jugadores del mundial FIFA 2022. En la actualidad, xG es el mejor predictor del rendimiento futuro tanto para jugadores como para equipos. xG es una métrica que mide la probabilidad de que un tiro dado termine en gol. Según StatsBomb (https://statsbomb.com/es/metricas-de-futbol/que-es-el-xg/), un modelo de xG utiliza información histórica de miles de tiros con características similares para estimar la probabilidad de gol en una escala de 0 a 1. Por ejemplo, un tiro con un valor de xG de 0,2 es uno que razonablemente se puede esperar que termine en gol dos de cada 10 veces. En el dataset, la columna de xG se construyó a partir de los datos de statsBombR filtrando todos los shots (tiros al arco) que no fueran penales, y sumando sus xG para cada uno de los jugadores. La métrica xGA se construye con una información adicional: la de los pases. De cada tiro al arco, se registra si proviene de un pase de asistencia. Luego, la variable xGA de este dataset se construyó a partir de filtrar todos los shots asistidos de los datos del mundial 2022 de statsBombR y sumar sus xG para cada uno de los jugadores.
#'
#' @format Un data frame con 304 filas y 3 variables:
#' \describe{
#'   \item{jugador}{nombre del jugador}
#'   \item{xG}{goles esperados (sin penales)}
#'   \item{xGA}{goles esperados asistidos}
#' }
#' @source \url{https://daniellaparada.github.io/IC-datasets-docencia/otros-datasets.html}
"xGFIFA22"
