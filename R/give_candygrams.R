#' Announces the number of candygrams for a person.
#'
#' @param persons A vector of people
#' @param number A numeric vector of how many grams each student got
#' @param extra_message A string giving extra commentary.
#'
#' @return A candy gram announcement
#'
#' @importFrom stringr str_detect str_to_title
#' @importFrom english as.english
#'
#' @export
give_many_candygrams <- function(persons, number,
                            extra_message = NULL){

  for (i in 1:length(person)){
  num <- str_to_title(as.english(number[i]))
  student <- person[i]

  stopifnot(number > 0)

  if (str_detect(student, "Gretchen")) {

    return(cat("None for Gretchen Weiners."))

  }

  if (is.null(extra_message)) {

    extra_message <- add_commentary(student, number)

  }

  for (i in 1:length(person)){


  glue::glue("{number} for {student}.{extra_message}")

}

  }
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
