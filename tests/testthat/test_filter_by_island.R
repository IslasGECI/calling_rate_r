describe("Filter by island", {
  it("Only Socorro", {
    data <- tibble::tibble("Isla" = c("Socorro", "Clarión", "Socorro"), "Especie" = "Puffinus auricularis")
    island <- "Socorro"
    obtained <- filter_by_island(data, island)
    obtained_rows <- nrow(obtained)
    expected_rows <- 2
    testthat::expect_equal(obtained_rows, expected_rows)
  })
})
