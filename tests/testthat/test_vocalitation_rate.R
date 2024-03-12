describe("Vocalization rate", {
  interest_values <- c(21, 32, 43, 54, 65)
  column_of_interest <- tibble::tibble(interest_values)
  it("calculates the rate calling", {
    expected <- 4.3
    obtained <- calculate_rate_vocalization(column_of_interest)
    expect_equal(expected, obtained)
  })
})
