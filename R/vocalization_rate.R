calculate_rate_vocalization <- function(calls) {
  minutes_of_record <- 10
  mean(calls, na.rm = TRUE) / minutes_of_record
}
