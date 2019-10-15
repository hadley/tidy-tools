mean2 <- function(x) {
  UseMethod("mean2")
}

mean2.numeric <- function(x) {
  sum(x) / length(x)
}
mean2.logical <- mean2.numeric

#' @importFrom vctrs vec_data new_datetime
mean2.POSIXct <- function(x) {
  new_datetime(mean2(vec_data(x)), tzone = attr(x, "tzone"))
}

mean2.difftime <- function(x) {
  new_duration(mean2(vec_data(x)), units = attr(x, "units"))
}

mean2.Date <- function(x) {
  mean2(as.POSIXct(x, tz = "UTC"))
}

mean2.default <- function(x) {
  stop(
    "Can't compute mean() of object of class ", class(x)[[1]],
    call. = FALSE
  )
}
