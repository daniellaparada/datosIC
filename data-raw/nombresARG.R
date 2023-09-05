## code to prepare `nombresARG` dataset goes here

library(vroom)
library(lubridate)
library(tidyverse)
library(stringr)
nombrarg <- vroom("C:/Users/dpara/OneDrive/Escritorio/nombres-arg.csv")

#Limpio
nom <- nombrarg %>%
  mutate(nstr = str_count(nombre)) %>%
  arrange(-cantidad)

nom <- nom %>%
  mutate(largo = (nstr>20 & cantidad<10))

nomfilt <- nom %>%
  filter(largo == FALSE)

nomfilt <- nomfilt %>%
  filter(nstr > 2)

nomfilt <- nomfilt %>%
  mutate(raros = str_detect(nombre,
                            ("1|2|3|4|5|6|7|8|9|0|-|,")
                            ))

nomfilt <- nomfilt %>%
  filter(raros == FALSE)

nomfilt <- nomfilt %>%
  mutate(raros = str_detect(nombre,"\\.|\\)|\\("))

nomfilt <- nomfilt %>%
  filter(raros == FALSE)

nomfilt <- nomfilt %>%
  mutate(nombreM = toupper(nombre))

nomfilt <- nomfilt %>%
  str_replace(nombreM, "Á", "A") %>%
  str_replace(nombreM, "É", "E") %>%
  str_replace(nombreM, "Í", "I") %>%
  str_replace(nombreM, "Ó", "O") %>%
  str_replace(nombreM, "Ú", "U")

nomfilt$nombreM <- str_replace(nomfilt$nombreM,"Á","A")
nomfilt$nombreM <- str_replace(nomfilt$nombreM,"É", "E")
nomfilt$nombreM <- str_replace(nomfilt$nombreM,"Í", "I")
nomfilt$nombreM <- str_replace(nomfilt$nombreM,"Ó", "O")
nomfilt$nombreM <- str_replace(nomfilt$nombreM,"Ú", "U")

nomfilt$nombreM <- str_replace(nomfilt$nombreM,"  ", " ")

nomfilt <- nomfilt %>%
  mutate(nombreM = str_trim(nombreM))

nomfilt <- nomfilt %>%
  mutate(nombreM = str_squish(nombreM))


nomfilt <- nomfilt %>%
  arrange(-cantidad)

nombrarg <- nomfilt %>%
  select(7,2,3)

colnames(nombrarg)[1] <- "nombre"

nombrarg <- nombrarg %>%
  group_by(nombre, anio) %>%
  summarise(cantidad = sum(cantidad))

nombrarg <- nombrarg %>%
  arrange(-cantidad)

nombresARG <- nombrarg

load("C:/Users/dpara/Dropbox (Personal)/datosIC/data/nombresARG.rda")

nombresARG <- nombresARG %>% filter(cantidad > 100)

usethis::use_data(nombresARG, overwrite = TRUE)

readr::spec(nombresARG)

vars <- c(nombre = "nombre registrado",
          cantidad = "cantidad de nombres registrados en el año",
          anio = "año de registro")

glue::glue("#'   \\item{[colname]}{[coldesc]}",
           colname = names(vars),
           coldesc = vars,
           .open = "[",
           .close = "]")
