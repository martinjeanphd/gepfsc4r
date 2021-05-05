#' goodenuff_results
#'
#' @import fs
#' @import readr
#' @export goodenuff_results
#'
#' @description Create results folder with figures, tables, and manuscript sub-folders.
goodenuff_results <- function() {
  fs::dir_create("resultats")
  fs::dir_create("resultats/figures")
  fs::dir_create("resultats/tableaux")
  fs::dir_create("resultats/manuscrit")
}
