#' @export
write_filtered_by_island <- function(options) {
  input_data <- readr::read_csv(options[["data_path"]], show_col_types = FALSE)
  island <- options[["island"]]
  input_data |>
    filter_by_island(island) |>
    readr::write_csv(options[["output_path"]])
}
