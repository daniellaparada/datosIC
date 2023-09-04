## code to prepare `jugadores` dataset goes here

usethis::use_data(jugadores, overwrite = TRUE)
library(readr)
library(vroom)
library(lubridate)
library(tidyverse)
library(stringr)
jugadores <- vroom("data-raw/jugadores.csv")

jugadores <- jugadores %>%
  drop_na(Nacimiento)
jugadores$Nacimiento <- as.Date(jugadores$Nacimiento, tryFormats = c("%d/%m/%Y"))

jugadores$Ciudad <- str_replace(jugadores$Ciudad,"á","a")
jugadores$Ciudad <- str_replace(jugadores$Ciudad,"é","e")
jugadores$Ciudad <- str_replace(jugadores$Ciudad,"í","i")
jugadores$Ciudad <- str_replace(jugadores$Ciudad,"ó","o")
jugadores$Ciudad <- str_replace(jugadores$Ciudad,"ú","u")

jugadores$Jugador <- str_replace(jugadores$Jugador,"á","a")
jugadores$Jugador <- str_replace(jugadores$Jugador,"é","e")
jugadores$Jugador <- str_replace(jugadores$Jugador,"í","i")
jugadores$Jugador <- str_replace(jugadores$Jugador,"ó","o")
jugadores$Jugador <- str_replace(jugadores$Jugador,"ú","u")

jugadores$Jugador <- str_replace(jugadores$Jugador,"Á","A")
jugadores$Jugador <- str_replace(jugadores$Jugador,"É","E")
jugadores$Jugador <- str_replace(jugadores$Jugador,"Í","I")
jugadores$Jugador <- str_replace(jugadores$Jugador,"Ó","O")
jugadores$Jugador <- str_replace(jugadores$Jugador,"Ú","U")

jugadores <- jugadores %>%
  mutate(Mes = month(Nacimiento),
         Anio = year(Nacimiento))

spec(jugadores)
write.csv(jugadores, file = file('data-raw/jugador.csv', encoding = "UTF-8"))

ct <- cols(
            Equipo = col_character(),
            Puesto = col_character(),
            Jugador = col_character(),
            Edad = col_double(),
            Nacimiento = col_character(),
            Altura = col_double(),
            Ciudad = col_character(),
            Pais = col_character(),
            Mes = col_double(),
            Anio = col_double())
jugadores <- readr::read_delim("data-raw/jugador.csv", col_types = ct)
readr::spec(jugadores)

jugadores$Nacimiento <- as.Date(jugadores$Nacimiento, format="%d/%m/%Y")
jugadores$Equipo <- factor(jugadores$Equipo)
jugadores$Puesto <- factor(jugadores$Puesto)
jugadores$Pais <- factor(jugadores$Pais)
jugadores$Mes <- factor(jugadores$Mes)
jugadores$Anio <- factor(jugadores$Anio)
jugadores$Ciudad <- factor(jugadores$Ciudad)

usethis::use_data(jugadores, overwrite = TRUE)



vars <- c(  Equipo = "equipo en el que juega",
            Puesto = "posición en la que juega",
            Jugador = "nombre del jugador",
            Edad = "edad del jugador al 2023",
            Nacimiento = "fecha de nacimiento del jugador, en el formato día-mes-año",
            Altura = "altura (cm) del jugador",
            Ciudad = "ciudad de nacimiento del jugador",
            Pais = "país de nacimiento del jugador",
            Mes = "mes de nacimiento del jugador",
            Anio = "año de nacimiento del jugador")

glue::glue("#'   \\item{[colname]}{[coldesc]}",
           colname = names(vars),
           coldesc = vars,
           .open = "[",
           .close = "]")

