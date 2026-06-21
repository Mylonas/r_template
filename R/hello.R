#' Say Hello
#'
#' A simple example function. Replace this with your own functions.
#'
#' @param name A character string. The name to greet.
#' @return A character string greeting.
#' @export
#' @examples
#' hello("world")
hello <- function(name = "world") {
  paste0("Hello, ", name, "!")
}
