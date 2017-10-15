#' Birthday clock
#'
#' @param month English name for the month of your birth; see \code{\link[base]{month.name}}
#' @param day integer day of the month in which you were born; should be one of \emph{1-31}
#'
#' @export
#'
#' @examples
#' bday_clock("January", 1)
bday_clock <- function(month, day) {

  bday_str <- paste(month,
                    day,
                    lubridate::year(Sys.Date()) + 1,
                    sep = "/")

  bday <- as.Date(bday_str, format = "%B/%d/%Y")

  d <- as.numeric(bday - Sys.Date(), units = "days")

  msg <- paste0(d, " days until your birthday there are ...")

  cowsay::say(msg, by = "yoda")

}
