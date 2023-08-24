## code to prepare `nombrarg` dataset goes here

usethis::use_data(nombrarg, overwrite = TRUE)
library(vroom)
library(lubridate)
library(tidyverse)
nombrarg <- vroom("data-raw/nombres-arg.csv")
usethis::use_data(nombrarg, overwrite = TRUE)

# Falta limpieza, solo chequeo que suba OK dado que es pesado
readr::spec(nombrarg)

vars <- c(nombre = "nombre registrado",
          cantidad = "cantidad de nombres registrados en el año",
          anio = "año de registro")

glue::glue("#'   \\item{[colname]}{[coldesc]}",
           colname = names(vars),
           coldesc = vars,
           .open = "[",
           .close = "]")
