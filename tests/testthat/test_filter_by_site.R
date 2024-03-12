describe("Filter by site", {
  it("Only 'Nido de Gorilas'", {
    input <- "/workdir/test/data/monthly_classified_callings.csv"
    data <- readr::read_csv(input, show_col_types = FALSE)
    sitio <- "Nido de Gorilas"
    filtered_data <- data |> filter_by_site(sitio)
    testthat::expect_true(all(filtered_data$Sitio == sitio))
  })
})
