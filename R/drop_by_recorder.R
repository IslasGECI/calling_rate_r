drop_by_recorder <- function(data_with_all_recorders, recorder_for_drop) {
  data_with_all_recorders |> dplyr::filter(Grabadora != recorder_for_drop)
}
