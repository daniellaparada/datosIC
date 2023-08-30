## code to prepare `viviendas` dataset goes here

usethis::use_data(viviendas, overwrite = TRUE)
ct <- cols(
  tipo = col_character(),
  ciudad = col_character(),
  provincia = col_character(),
  precioUSD = col_double(),
  sup_tot = col_double(),
  sup_cub = col_double(),
  precio_sup_tot = col_double(),
  precio_sup_cub = col_double(),
  ambientes = col_double())

viviendas <- vroom("data-raw/viviendas.csv", col_types = ct)
spec(viviendas)

vars <- c(tipo = "tipo de vivienda en venta",
          ciudad = "ciudad, municipio (GBA) o barrio (CABA) de la vivienda",
          provincia = "provincia (con distinción entre zonas de GBA y CABA)",
          lat = "latitud de la ubicación de la vivienda",
          lon = "longitud de la ubicación de la vivienda",
          precioUSD = "precio publicado (USD) de la vivienda en venta",
          sup_tot = "superficie total (m2) de la vivienda",
          sup_cub = "superficie cubierta (m2) de la vivienda",
          precio_sup_tot = "precio (USD) del m2 según superficie total de la vivienda",
          precio_sup_cub = "precio (USD) del m2 según superficie cubierta de la vivienda",
          ambientes = "cantidad de ambientes de la vivienda reportados en la publicación")

glue::glue("#'   \\item{[colname]}{[coldesc]}",
           colname = names(vars),
           coldesc = vars,
           .open = "[",
           .close = "]")
