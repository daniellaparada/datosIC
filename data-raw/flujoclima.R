## code to prepare `flujoclima` dataset goes here

usethis::use_data(flujoclima, overwrite = TRUE)
flujoclima <- readr::read_csv("data-raw/flujo-clima.csv")

flujoclima$dia <- factor(flujoclima$dia)
flujoclima$tipo_dia <- factor(flujoclima$tipo_dia)
flujoclima$fecha <- as.Date(flujoclima$fecha, format="%m-%d")

readr::spec(flujoclima)
usethis::use_data(flujoclima, overwrite = TRUE)

vars <- c(fecha = "fecha, en el formato mes-día",
          n = "cantidad de vehículos registrados en el día por el radar RD 171 de la Autopista Lugones, altura ESMA, sentido A",
          tavg = "temperatura promedio (°C) del día",
          prcp = "nivel de precipitaciones (mm) del día",
          dia = "nombre del día",
          tipo_dia = "tipo de día (día de semana - fin de semana)",
          lluvia = "registro de si la precitación es mayor que 0 o no (llueve - no llueve)")

glue::glue("#'   \\item{[colname]}{[coldesc]}",
           colname = names(vars),
           coldesc = vars,
           .open = "[",
           .close = "]")

usethis::use_r("flujoclima")
