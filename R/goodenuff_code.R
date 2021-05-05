#' goodenuff_code
#'
#' @import fs
#' @import readr
#' @import purrr
#' @export goodenuff_code
#'
#' @description Create the code folder for import, tidy, wrangle, visualize, model, communicate, and runall
goodenuff_code <- function() {
  fs::dir_create(path = "code/")
  code_files <- c("code/01-importer.R", "code/02-ranger.R", "code/03-nettoyer.R", "code/04-visualiser.R", "code/05-modéliser.R", "code/06-communiquer.R")
  map(.x = code_files, .f = fs::file_create)
  script_headers <- c("#=====================================================================#\n# Code à créer:\n# Créé par:\n# MIT License\n# Version:\n#=====================================================================#\n")
  map2(.x = script_headers, .y = code_files, .f = readr::write_lines, append = TRUE)

  fs::file_create(path = "code/toutExecuter.R")
  run_all_content <- c("#=====================================================================#\n\n# Le script de contrôle: Pour un projet simple, un script de contrôle peut, par exemple,\n# lire les données et appliquer des étapes de nettoyage et d'analyse\n# à partir des fonctions provenant des autres fichiers de ce dossier,\n# et créer et enregistrer des résultats.\n\n# TEMP_DIR = ./temp_zip_files/\n\n# echo 'Création de fichiers zip requis par l'outil d'analyse...'\n# mkdir $(TEMP_DIR)\n# ./src/make-zip-files.py $(TEMP_DIR) *.dat\n\n# echo 'Analyse...'\n# ./bin/sqr_mean_analyze -i $(TEMP_DIR) -b 'temp'\n\n# echo 'Nettoyage...'\n# rm -rf $(TEMP_DIR)\n\n#=====================================================================#")
  readr::write_lines(x = run_all_content, file = "code/toutExecuter.R")
}
