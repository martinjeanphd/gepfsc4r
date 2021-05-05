#' goodenuff_collab
#'
#' @import fs
#' @import readr
#' @import utils
#' @export goodenuff_collab
#'
#' @description Create collaboration files: CITATION, requirements.txt, and LICENSE (source: https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt)
goodenuff_collab <- function() {
  fs::file_create("CITATION")

  citation_content <- "Make the project citable (3e) by including a CITATION file in the project's home directory that describes how to cite this project as a whole, and where to find (and how to cite) any data sets, code, figures, and other artifacts that have their own DOIs.\n\n\nPlease cite this work as:\n\n\nMorris, B.D. and E.P. White. 2013. 'The EcoData Retriever:\nimproving access to existing ecological data.'PLOS ONE 8:e65848.\nhttp://doi.org/doi:10.1371/journal.pone.0065848"
  readr::write_lines(x = citation_content, file = "CITATION")

  fs::file_create("prérequis.txt")
  requirements_content <- "# Prérequis \n\n\n'Rendre les dépendances et les exigences explicites. Ceci est généralement fait par projet plutôt que par programme, en ajoutant un fichier appelé prérequis.txt dans le dossier racine du projet.' \n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  readr::write_lines(x = requirements_content, file = "prérequis.txt")

  utils::download.file(url = "https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt", destfile = "LICENSE")
}
