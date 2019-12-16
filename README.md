
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Tidy tools

<!-- badges: start -->

<!-- badges: end -->

Notes and live code for a 2-day workshop on “tidy tools”. This workshop
is (mostly) coded live. You can see the scripts I work from in
[`script/`](script/), but I recommend not reading too far ahead because
you’ll find answers to some of the exercises, and you’ll learn more if
you try to work through them first.

Slides:

  - [Intro to package development](1-intro.pdf)
  - [Testing](2-testing.pdf)
  - [Sharing](3-sharing.pdf)

## Setup

``` r
install.packages("devtools")
install.packages(c("fs", "glue", "lobstr", "rematch2", "sloop", "vctrs"))
devtools::install_github("r-lib/itdepends")
```

``` r
# You may also need:
install.packages(c("ggplot2", "dplyr", "stringr"))

# And get the package we'll work with later:
usethis::create_from_github("hadley/fordogs", fork = FALSE)

# if you see an error about "unsupported protocol", try this:
usethis::create_from_github("hadley/fordogs", fork = FALSE, protocol = "https")
```

<!-- 
* When you're done, put a green post-it on your computer. 
* If you need help, put up a pink post-it.
-->
