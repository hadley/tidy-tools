mtcars <- datasets::mtcars

cyl_plot <- function() {
  ggplot2::ggplot(mtcars) +
    ggplot2::geom_bar(ggplot2::aes(.data$cyl)) +
    ggplot2::coord_flip()
}

cyl_sum <- function() {
  mtcars %>%
    group_by(.data$cyl) %>%
    summarise(n = n(), mpg = mean(.data$mpg))
}
