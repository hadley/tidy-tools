#' Bizarro a vector
#'
#'
#' @param x A vector
#' @export
bizarro <- function(x) {
  UseMethod("bizarro")
}
#' @export
#' @rdname bizarro
bizarro.numeric <- function(x) {
  -x
}
#' @export
#' @rdname bizarro
bizarro.logical <- function(x) {
  !x
}
#' @export
bizarro.character <- function(x) {
  str_reverse(x)
}
str_reverse <- function(x) {
  pieces <- stringr::str_split(x, "")
  purrr::map_chr(pieces, ~ paste0(rev(.x), collapse = ""))
}

#' @export
bizarro.data.frame <- function(x) {
  names(x) <- bizarro(names(x))
  x[] <- purrr::map(rev(x), bizarro)
  x
}

#' @export
bizarro.factor <- function(x) {
  levels(x) <- bizarro(levels(rev(x)))
  x
}

#' @export
bizarro.default <- function(x) {
  stop("Don't know how to bizarro an object of class '", class(x)[[1]], "'", call. = FALSE)
}
