#' My standard deviation function
#'
#' @param x A numeric vector
#' @param na.rm Remove missing values?
#' @importFrom magrittr %>%
#' @export
my_sd <- function(x, na.rm = FALSE) {
  x %>%
    stats::var(na.rm = na.rm) %>%
    sqrt()
}
