## code to prepare `top_downloads` dataset goes here

top_downloads <-
  cranlogs::cran_top_downloads("last-month") |>
  dplyr::slice_head(n = 5) |>
  dplyr::select(rank, package) |>
  dplyr::mutate(maintainer = purrr::map_chr(package, maintainer)) |>
  dplyr::mutate(maintainer = stringr::str_extract(
    maintainer,"[a-z.]*@[a-z.]*")
    )

usethis::use_data(top_downloads, overwrite = TRUE)
