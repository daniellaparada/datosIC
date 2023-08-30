## code to prepare `xGFIFA22` dataset goes here

usethis::use_data(xGFIFA22, overwrite = TRUE)
library(vroom)
library(lubridate)
library(tidyverse)
library(stringr)
library(ggplot2)
library(dplyr)
library(plotly)

xGFIFA22 <- vroom("data-raw/xGFIFA22.csv")

xGFIFA22 <- xGFIFA22 %>%
  rename(jugador = player.name)

readr::spec(xGFIFA22)
usethis::use_data(xGFIFA22, overwrite = TRUE)

vars <- c(jugador = "nombre del jugador",
          xG = "goles esperados (sin penales)",
          xGA = "goles esperados asistidos")

glue::glue("#'   \\item{[colname]}{[coldesc]}",
           colname = names(vars),
           coldesc = vars,
           .open = "[",
           .close = "]")
