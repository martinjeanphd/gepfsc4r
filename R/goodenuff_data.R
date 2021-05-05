#' goodenuff_data
#'
#' @import fs
#' @import readr
#' @export goodenuff_data
#'
#' @description Create data folder, README.md file, and raw subfolder.
goodenuff_data <- function() {
  fs::dir_create("données/")
  fs::dir_create("données/brutes")
  data_info <- "# Données du projet  \n\n\nPour des conseils, consultez: https://help.osf.io/hc/en-us/articles/360019739054-How-to-Make-a-Data-Dictionary\n\n\n\n## Ressources additionnelles\n\n1. Partage de données\nhttp://bit.ly/data-4-sharing\n\n\n2. Données dans un tableur\nhttp://bit.ly/data-in-sheets\n\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  fs::file_create("données/LISEZMOI.md")
  readr::write_lines(x = data_info, file = "données/LISEZMOI.md", append = TRUE)
}
