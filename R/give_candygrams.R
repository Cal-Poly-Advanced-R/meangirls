#' Announces the number of candygrams for a person.
#'
#' @param person The candygram recipient
#' @param number How many grams they got
#' @param extra_message A string giving extra commentary.
#'
#' @return A candy gram announcement
#'
#' @importFrom stringr str_detect str_to_title
#' @importFrom english as.english
#'
#' @export
give_candygrams <- function(person, number,
                            extra_message = NULL) {

  stopifnot(number > 0)

  if (str_detect(person, "Gretchen")) {

    return(cat("None for Gretchen Weiners."))

  }

  if (is.null(extra_message)) {

    extra_message <- add_commentary(person, number)

  }

  number <- str_to_title(as.english(number))


  glue::glue("{number} for {person}. {extra_message}")



}

#' Tacks commentary on to candygram announcement
#'
#' @param person The candygram recipient
#' @param number How many grams they got
#'
#' @return A string (possibly blank)
add_commentary <- function(person, number) {

  if (stringr::str_detect(person, "Aaron")) {

    return("They are from Regina.")

  }


  if (number > 3) {

    return(glue::glue("You go, {person}!"))

  }


  return("")

}
