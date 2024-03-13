describe("drop_months_with_na", {
  data_with_na <- c(1, NA, 1)
  regular_data <- c(10, 10, 10)
  dataframe_with_na <- tibble::tibble("Ene" = data_with_na, "Feb" = data_with_na, "Mar" = regular_data)
  it("Drop Ene and Feb", {
    obtained <- drop_months_with_na(dataframe_with_na)
    expected_ncols <- 1
    expect_equal(length(ncol(obtained)), expected_ncols)
  })
  it("Drop month full of NAs", {
    dataframe_with_na <- tibble::tibble("Ene" = NA, "Feb" = data_with_na, "Mar" = regular_data)
    obtained <- drop_months_with_na(dataframe_with_na)
    expected_ncols <- 1
    expect_equal(length(ncol(obtained)), expected_ncols)
  })
})