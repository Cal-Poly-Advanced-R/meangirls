#' Tells someone they are pretty.
#'
#' @param name The person's name
#' @param follow_up Should the function follow up with questions?
#' Defaults to `TRUE`.
#'
#' @return A compliment string
#'
#' @export
really_pretty <- function(name, follow_up = FALSE) {

  compliment <- glue::glue("You're, like, really pretty, {name}.")

  if (follow_up) {
    compliment <- paste(compliment,
                        "So you agree?  You think you're really pretty?")
  }

  return(compliment)

}

#' Tells someone I like their clothing item.
#'
#' @param name The person's name
#' @param follow_up Should the function follow up with questions?
#' Defaults to `FALSE`.
#'
#' @return A compliment string
#'
#' @export
nice_style <- function(object, adjective = "vintage", follow_up = FALSE) {

  compliment <- glue::glue("I love your {object}!  Where did you get it? So {adjective}!")

  if (follow_up) {
    compliment <- glue::glue("{compliment}
                        That's the ugliest effing {object} I've ever seen.")
  }

  return(compliment)

}


