#' Draw a bar chart
#'
#' @param df A dataframe
#' @param x Variable to divide up bars by
#' @param y Variable that gives height of each var
#' @export
#' @examples
#' barchart(ggplot2::diamonds, cut)
#' barchart(mtcars10, cyl)
barchart <- function(df, x, y) {
  plot <- ggplot2::ggplot(df)
  if (missing(y)) {
    plot <- plot + ggplot2::geom_bar(ggplot2::aes({{ x }}))
  } else {
    plot <- plot + ggplot2::geom_col(ggplot2::aes({{ x }}, {{ y }}))
  }
  plot + ggplot2::coord_flip()
}
