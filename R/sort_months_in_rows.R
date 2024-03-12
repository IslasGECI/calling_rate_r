sort_months_in_rows <- function(messy_rows) {
  order_months <- c("November", "December", "January", "February", "March", "April", "May")
  messy_rows |> dplyr::arrange(factor(temporada, levels = order_months))
}
