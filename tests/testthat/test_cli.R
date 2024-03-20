describe("Cli to filter by island", {
  it("Filter Socorro", {
    data_path <- "/workdir/tests/data/recordings_for_tests.csv"
    island <- "Socorro"
    options <- list("data_path" = data_path, "island" = island, "output_path" = "/workdir/tests/filtered_by_island.csv")
    write_filtered_by_island(options)
  })
})
