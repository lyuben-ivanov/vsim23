#' R Studio data for most downloaded packages
#'
#' A data downloaded with the `cranlogs` package from R Studio's CRAN mirror.
#' The subset contains data about the 5 most downloaded packages for the last
#' month.
#'
#' @format ## `top_downloads`
#' A data frame with 5 observations of 3 variables.
#' \describe{
#'   \item{rank}{the ranking of the package}
#'   \item{package}{the name of the package}
#'   \item{maintainer}{the e-mail of the package's maintainer}
#' }
#'
#'@source  <http://cran-logs.rstudio.com>
#'
"top_downloads"

#' R Studio data for `learnr` downloads
#'
#' A data downloaded with the `cranlogs` package from R Studio's CRAN mirror.
#' The subset contains data about the annual downloads of `learnr` package
#' since its release in 2017.
#'
#' @format ## `learnr_downloads`
#' A data frame with 7 observations of 2 variables.
#' \describe{
#'  \item{year}{year of downloads}
#'  \item{annual downloads}{the number of downloads of `learnr` for the respective
#'  year}
#' }
#'
#'@source  <http://cran-logs.rstudio.com>
"learnr_downloads"
