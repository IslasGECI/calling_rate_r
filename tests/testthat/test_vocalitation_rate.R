describe("Vocalization rate", {
  interest_values <- c(21, 32, 43, 54, 65)
  it("calculates the rate calling", {
    expected <- 4.3
    obtained <- calculate_rate_vocalization(interest_values)
    expect_equal(expected, obtained)
  })
})
