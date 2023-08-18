## code to prepare `sismos` dataset goes here

usethis::use_data(sismos, overwrite = TRUE)
sismos <- readr::read_csv("data-raw/sismos-arg.csv")

ct <- cols(
  Fecha = col_date(format = ""),
  Hora = col_time(format = ""),
  Latitud = col_double(),
  Longitud = col_double(),
  Provincia = col_character(),
  Percibido = col_logical(),
  Magnitud = col_double(),
  Profundidad = col_double()
)

sismos <- readr::read_csv("data-raw/sismos-arg.csv", col_types = ct)

usethis::use_data(sismos, overwrite = TRUE)
