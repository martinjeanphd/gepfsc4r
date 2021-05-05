#' goodenuff_docs
#'
#' @import fs
#' @import readr
#' @export goodenuff_doc
#'
#' @description Create doc folder with notebook.md, manuscript.md, and changelog.txt files.
goodenuff_doc <- function() {
  fs::dir_create("docs")

  fs::file_create("docs/carnet.md")

  notebook_content <- "# Carnet\n\n...un cahier de travail décrivant les différentes idées du projet et la manière dont elles ont été mises en œuvre.\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  readr::write_lines(x = notebook_content, file = "docs/carnet.md")

  fs::file_create("docs/manuscrit.md")
  manuscript_content <- "# Manuscrit\n\n...une version préliminaire du manuscrit décrivant les résultats du projet.\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  readr::write_lines(x = manuscript_content, file = "docs/manuscrit.md")


  fs::file_create("docs/Journal.txt")
  changelog_content <- "...inscrivez dans ce fichier des notes datées sur les modifications apportées au projet, dans l'ordre chronologique inverse (c'est-à-dire en commençant par les plus récentes). Ce fichier est l'équivalent d'un cahier de laboratoire et doit contenir des entrées comme celles présentées ci-dessous.\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  readr::write_lines(x = changelog_content, file = "docs/journal.txt")
}
