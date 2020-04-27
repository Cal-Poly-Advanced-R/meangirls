#' Calls someone a mean name.
#'
#' @param insulting_name The mean name
#'
#' @return An insult string
#'
#' @export
boo <- function(insulting_name) {

  glue::glue("Boo, you {insulting_name}")

}


#' Tells someone their new slang word isn't good.
#'
#' @param name The person's name
#' @param slang_word The proposed slang word.
#'
#' @return An insult string
#'
#' @export
fetch <- function(name, slang_word) {

  glue::glue("{name}, stop trying to make {slang_word} happen!  It's not going to happen!")


}

