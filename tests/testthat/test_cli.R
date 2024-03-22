describe("Cli to filter by island", {
  it("Filter Socorro", {
    data_path <- "/workdir/tests/data/recordings_for_tests.csv"
    island <- "Socorro"
    options <- list("data_path" = data_path, "island" = island, "output_path" = "/workdir/tests/filtered_by_island.csv")
    write_filtered_by_island(options)
  })
})

describe("Cli to drop by recorder", {
  it("Filter Socorro2", {
    data_path <- "/workdir/tests/data/recordings_for_tests.csv"
    recorder_to_drop <- "Socorro2"
    options <- list("data_path" = data_path, "scenarios" = recorder_to_drop, "output_path" = "/workdir/tests/dropped_recorder.csv")
    write_dropped_off_recorder(options)
  })
})
