# fix_excel_dates
#' Fix Excel dates
#' 
#' Add four years and a day to a given date if R has improperly read in dates
#' from an Excel file using the 1904 date system.
#' @param date date to be converted
#' @importFrom lubridate ymd years days
#' @export
#' @references
#' \url{http://datapub.cdlib.org/2014/04/10/abandon-all-hope-ye-who-enter-dates-in-excel/}
#' @examples
#' fix_excel_dates("2014-05-01")

fix_excel_dates <- function(date) {
  return(ymd(date) + years(4) + days(1))
}