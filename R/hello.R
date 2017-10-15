#' Say hello
#'
#' @param name specify what you would like the program to call you; defaults to user
#' @param animal this argument allows you to choose an animal to accompany your message; animals to choose from are
#'
#' @export
#'
#' @examples
#' hello()
#' hello("hal")

hello <- function(name = "user", animal = NULL) {

  msg <- paste0("hello ", name, " ...")

  if(is.null(animal)) {

    animal <- sample(names(cowsay::animals), 1)

  }

  cowsay::say(msg, by = animal)

}
