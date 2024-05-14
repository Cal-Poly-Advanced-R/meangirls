#' Gives Multiple Candygrams
#'
#' @param students The a vector of student names
#' @param number The number of candygrams each student received
#' @param extra_messages Extra commentary for each candygram
#'
#' @return A vector of candygram announcements
#'
#' @importFrom purrr pmap
#'
#' @export

give_many_candygrams <- function(students, counts,
                                 extra_messages = NULL){
  # Checks:
  # Length above 1
  # Equal lengths
  if(length(students) <= 1) {
    print(length(students))
    stop("Must input more than 1 candygram.")
  }
  if(length(students) != length(counts) |
     (!is.null(extra_messages) & length(students) != length(extra_messages))){
    stop("Vector lengths do not match.")
  }

  # If given extra_messages, use them
  if(!is.null(extra_messages)){
    purrr::pmap_chr(.l = list(students, counts, extra_messages),
                .f = give_candygrams)
  }
  purrr::pmap_chr(.l = list(students, counts),
              .f = give_candygrams)
}
