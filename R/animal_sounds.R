#' Create a String Stating the Sound an Animal makes
#'
#' Given strings specifying an animal and a corresponding sound, create a
#' string of the form "The <animal> goes <sound>!".
#'
#' The [base::paste0()] function is used to create the string from the arguments
#' `animal` and `sound`.
#'
#' @param animal A string giving the name of the animal.
#' @param sound A string giving the sound of the animal.
#'
#' @return A character string.
#' @export
#'
#' @examples
#' animal_sounds("dog", "woof")
animal_sounds <- function(animal, sound) {
  #stopifnot(is.character(animal) & length(animal) == 1)
  #stopifnot(is.character(sound) & length(sound) == 1)
  assertthat::assert_that(
    assertthat::is.string(animal),
    assertthat::is.string(sound)
  )
  paste0("The ", animal, " goes ", sound, "!")
}
