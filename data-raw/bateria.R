## code to prepare `bateria` dataset goes here
library(vroom)
library(lubridate)
bateria <- vroom("data-raw/bateria.csv")
readr::spec(bateria)
bateria$desde <- as.Date(bateria$desde, tryFormats = c("%d/%m/%Y"))
bateria$hasta <- as.Date(bateria$hasta, tryFormats = c("%d/%m/%Y"))
readr::spec(bateria)

usethis::use_data(bateria, overwrite = TRUE)
bateria

vars <- c(desde = "fecha de inicio del período de medición, en el formato año-mes-día",
          hasta = "fecha de finalización del período de medición, en el formato año-mes-día",
          carga = "carga máxima (mWh) registrada en el período")

glue::glue("#'   \\item{[colname]}{[coldesc]}",
           colname = names(vars),
           coldesc = vars,
           .open = "[",
           .close = "]")
