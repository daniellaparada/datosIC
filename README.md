
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datosIC

<!-- badges: start -->
<!-- badges: end -->

En el marco de la convocatoria a Proyectos de Asistencia Estadística del Instituto de Cálculo (IC), se propuso la creación de un **repositorio curado** de datos abiertos para ser utilizados en la enseñanza de la Estadística y la Ciencia de Datos. El objetivo es proporcionar a la comunidad de docentes del IC una fuente centralizada de datos que cubra una amplia variedad de temas y áreas de aplicación.

Los *datasets* fueron revisados para asegurar que sean apropiados para su uso en cursos que dicta el IC, y [acá](https://daniellaparada.github.io/IC-datasets-docencia) se proporcionan descripciones detalladas para cada uno, así como breves sugerencias de **uso reproducible**. Esta librería recopila y disponibiliza los **datasets** allí documentados.

## Installation

Instalar datosIC desde [GitHub](https://github.com) con:

``` r
require(devtools)
devtools::install_github("daniellaparada/datosIC")
#> Downloading GitHub repo daniellaparada/datosIC@HEAD
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>          checking for file 'C:\Users\dpara\AppData\Local\Temp\RtmpQHCxTr\remotes5a5062d718db\daniellaparada-datosIC-d479fd5/DESCRIPTION' ...  ✔  checking for file 'C:\Users\dpara\AppData\Local\Temp\RtmpQHCxTr\remotes5a5062d718db\daniellaparada-datosIC-d479fd5/DESCRIPTION'
#>       ─  preparing 'datosIC':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information
#>       ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>       ─  building 'datosIC_0.0.0.9000.tar.gz'
#>      
#> 
#> Installing package into 'C:/Users/dpara/AppData/Local/R/win-library/4.2'
#> (as 'lib' is unspecified)
library(datosIC)
```
