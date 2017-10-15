#' Say hello
#'
#' @param name specify what you would like the program to call you;
#'
#' @export
#'
#' @examples
#' hello()
#' hello("hal")

hello <- function(name = "user") {

  msg <- paste0("hello ", name, " ...")

  cat(msg)

}
