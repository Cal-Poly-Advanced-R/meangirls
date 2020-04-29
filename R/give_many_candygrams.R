#' Announces the number of candygrams for multiple people
#'
#' @param persons The candygram recipients in a vector
#' @param numbers How many grams they got in a vector
#' @param extra_messages A string giving extra commentary in a vector, no message must be entered as "NULL"
#'
#' @return Candy gram announcements
#'
#' @importFrom stringr str_detect str_to_title
#' @importFrom english as.english
#'
#' @export
give_many_candygrams <- function(person, number, extra_message = NULL) {
  stopifnot(length(person) == length(number),
            length(person) == length(extra_message))
  gram_vec <- vector()
  for (i in 1:length(person)){
    if (extra_message[i] == "NULL"){
      gram <- give_candygrams(person[i], number[i])
      gram_vec <- append(gram_vec, gram)
    } else {
      gram <- give_candygrams(person[i], number[i], extra_message[i])
      gram_vec <- append(gram_vec, gram)
    }
  }
  cat(gram_vec, sep = "\n")
}


