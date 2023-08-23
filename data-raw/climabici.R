## code to prepare `climabici` dataset goes here

climabici <- readr::read_csv("data-raw/clima-bici.csv")
usethis::use_data(climabici, overwrite = TRUE)
usethis::use_r("climabici")

vars <- c(fecha = "fecha, en el formato año-mes-día",
          n = "cantidad de usos de bicletas del día",
          tavg = "temperatura promedio (°C) del día",
          tmin = "temperatura mínima (°C) del día",
          tmax = "temperatura máxima (°C) del día",
          prcp = "nivel de precipitaciones (mm) del día",
          dia = "nombre del día",
          tipo_dia = "tipo de día (día de semana - fin de semana)",
          lluvia = "registro de si la precitación es mayor que 0 o no (llueve - no llueve)")

glue::glue("#'   \\item{[colname]}{[coldesc]}",
           colname = names(vars),
           coldesc = vars,
           .open = "[",
           .close = "]")
