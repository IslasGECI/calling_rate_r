drop_months_with_na <- function(dataframe) {
  dataframe |>
    dplyr::select_if(~ !any(is.na(.)))
}
