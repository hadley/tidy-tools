
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Tidy tools

<!-- badges: start -->

<!-- badges: end -->

Notes and live code a 2-day workshop on “tidy tools”. This workshop is
(mostly) coded live. You can see the scripts I work from in
[`scripts/`](scripts/), but I recommending not reading too far ahead
because you’ll find answers to some of the exercises, and you’ll learn
more if you try to work through them first.

## Setup

``` r
install.packages(c("tidyverse", "devtools"))
install.packages(c("fs", "glue", "lobstr", "rematch2", "sloop", "vctrs"))
devtools::install_github("r-lib/itdepends")
```
