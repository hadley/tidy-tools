flexi_plot <- function(df, x) {
  ggplot2::ggplot(df) +
    ggplot2::geom_bar(ggplot2::aes({{ x }})) +
    ggplot2::coord_flip()
}

flexi_sum <- function(df, ..., x) {
  df %>%
    group_by(...) %>%
    summarise(n = n(), mpg = mean({{ x }}))
}

flexi_sum <- function(df, ..., x) {
  df %>%
    group_by(...) %>%
    summarise(n = n(), {{ x }} := mean({{ x }}))
}


flexi_sum2 <- function(df, group_var, ...) {
  df %>%
    group_by({{ group_var }}) %>%
    summarise_at(vars(...), mean)
}
