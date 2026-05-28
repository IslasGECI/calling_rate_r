describe("Cli to filter by island", {
  it("Filter Socorro", {
    data_path <- "/workdir/tests/data/recordings_for_tests.csv"
    island <- "Socorro"
    output_path <- "/workdir/tests/filtered_by_island.csv"
    options <- list("data_path" = data_path, "island" = island, "output_path" = output_path)
    testtools::if_exist_remove(output_path)
    write_filtered_by_island(options)
    expect_true(testtools::exist_output_file(output_path))
    testtools::if_exist_remove(output_path)
  })
})

describe("Cli to drop by recorder", {
  it("Filter Socorro2", {
    data_path <- "/workdir/tests/data/recordings_for_tests.csv"
    recorder_to_drop <- "Socorro2"
    output_path <- "/workdir/tests/dropped_recorder.csv"
    options <- list("data-path" = data_path, "recorder-name" = recorder_to_drop, "output-path" = output_path)
    testtools::if_exist_remove(output_path)
    write_dropped_off_recorder(options)
    expect_true(testtools::exist_output_file(output_path))
    testtools::if_exist_remove(output_path)
  })
})
