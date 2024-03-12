filter_by_site <- function(monthly_data, sitio) {
  monthly_data |> dplyr::filter(Sitio == sitio)
}
