## code to prepare `tempbici` dataset goes here

usethis::use_data(tempbici, overwrite = TRUE)
tempbici <- readr::read_csv("data-raw/temp-bici.csv")
readr::spec(tempbici)
usethis::use_data(tempbici, overwrite = TRUE)

vars <- c(fecha = "fecha, en el formato año-mes-día",
          n = "cantidad de usos de bicletas del día",
          tmin = "temperatura mínima (°C) del día",
          tmax = "temperatura máxima (°C) del día",
          tmed = "temperatura promedio (°C) del día",
          dia = "nombre del día",
          tipo_dia = "tipo de día (día de semana - fin de semana)")

glue::glue("#'   \\item{[colname]}{[coldesc]}",
           colname = names(vars),
           coldesc = vars,
           .open = "[",
           .close = "]")
