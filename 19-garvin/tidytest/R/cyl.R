
cyl_plot <- function(df) {
  ggplot2::ggplot(df) +
    ggplot2::geom_bar(ggplot2::aes(.data$cyl)) +
    ggplot2::coord_flip() +
    ggplot2::labs(x = "cyl")
}

#' @import rlang
NULL

#' Summaise mtcars by cylinder
#'
#' @import rlang
#' @importFrom dplyr group_by summarise n
#' @importFrom magrittr %>%
#' @importFrom rlang .data
#' @param df A data frame
cyl_sum <- function(df) {
  df %>%
    group_by(.data$cyl) %>%
    summarise(n = n(), mpg = mean(.data$mpg))
}


