# read_all_files
#' Read all files
#'
#' Read all files with a given file extension into a list. List elements are given names that correspond to the file name
#' 
#' @param dir directory where files are located. Defaults to the working directory.
#' @param ext file extension to be used. Defaults to '\\.(csv|CSV)$'.
#' @param FUN function to be used. Defaults to read.csv.
#' @param ... optional arguments to FUN
#' @export

read_all_files <- function(dir = '.', ext = '\\.(csv|CSV)$', FUN = read.csv, ...) {
  file_name_list <- list.files(path = dir, pattern = ext)
  full_file_names <- paste(dir, file_name_list, sep = "/")
  files <- lapply(full_file_names, FUN, ...)
  names(files) <- file_name_list
  return(files)
}

