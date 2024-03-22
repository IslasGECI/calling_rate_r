describe("Remove rows of a specific recorder", {
  it("Remove Socorro 1", {
    data <- tibble::tibble("Grabadora" = c("Socorro1", "Socorro2", "Socorro1"))
    recorder_to_drop <- "Socorro1"
    obtained <- drop_by_recorder(data, recorder_to_drop)
    expected_rows <- 1
    testthat::expect_equal(nrow(obtained), expected_rows)
  })
})
