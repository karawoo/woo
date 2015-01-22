##' Convert strings to Title Case (with spaces)
##'
##' @param x string or vector of strings to convert to title case
##' 
##' @author Kara Woo
##'
##' @examples
##' title_case("this is a sentence")
##'
##' @references
##' \url{http://stackoverflow.com/a/11672354/2921990}
##' 
##' @export

title_case <- function(x){
  capword <- function(x) {
   paste0(toupper(substring(x, 1, 1)), tolower(substring(x, 2, nchar(x))))
  }
  ifelse(is.na(x), NA,
         sapply(strsplit(x, "\\s"), function(x) {
           paste(capword(x), collapse = " ")
         }))
}
