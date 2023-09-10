## code to prepare `learnr_downloads` dataset goes here

learnr_downloads <-
  cranlogs::cran_downloads(
    packages = "learnr",
    from = "2017-01-01",
    to = Sys.Date()) |>
  dplyr::mutate(year = lubridate::year(date)) |>
  dplyr::group_by(year) |>
  dplyr::summarise(`annual downloads` = sum(count))

usethis::use_data(learnr_downloads, overwrite = TRUE)
