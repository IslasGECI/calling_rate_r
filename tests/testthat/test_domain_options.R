describe("Add domain specific options", {
  it("Add recorder name", {
    obtained <- get_domain_specific_options()
    expected_recorder <- "Socorro5"
    testthat::expect_equal(obtained[["recorder-name"]], expected_recorder)
  })
})
