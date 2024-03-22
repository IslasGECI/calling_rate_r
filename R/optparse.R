wdr_options <- function() {
  data_path <- geci.optparse::character_option(c("-i", "--data-path"), default = "/workdir/data/grabaciones.csv", help = "File with all recorders data")
  output_path <- geci.optparse::character_option(c("-o", "--output-path"), default = "/workdir/data/cleaned_grabaciones.csv", help = "File without rows of one recorder")
  recorder_name <- geci.optparse::character_option(c("-r", "--recorder-name"), default = "Socorro5", help = "Recorder name to remove")
  option_names <- c(data_path, output_path, recorder_name)
  geci.optparse::get_options_from_vec(option_names)
}
