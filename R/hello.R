#' Say hello
#'
#' @param name specify what you would like the program to call you; defaults to user
#' @param animal this argument allows you to choose an animal to accompany your message; for more information on animals to choose from see \code{\link[cowsay]{animals}}
#'
#' @export
#'
#' @examples
#' hello()
#' hello("hal")

hello <- function(name = "user", animal = NULL) {

  msg <- paste0("hello ",
                name,
                " ...\n",
                "you better get busy\n",
                next_year(),
                " will be here soon :)")

  if(is.null(animal)) {

    animal <- sample(names(cowsay::animals), 1)

  }

  cowsay::say(msg, by = animal)

}
