geci_read_csv <- function(path) {
  readr::read_csv(path, show_col_types = FALSE)
}

describe("sort months in row", {
  it("Sorts months from nov to may", {
    input <- "/workdir/tests/data/messy_intervals_monthly_calling_rate.csv"
    messy <- geci_read_csv(input)
    order_months <- c("November", "December", "January", "February", "March", "April", "May")
    tidy <- messy |> sort_months_in_rows()
    testthat::expect_equal(order_months, tidy$temporada)
  })
})
